// boot only
#include "driverlib.h"
#include "device.h"
#include "sha256.h"
// hi 
volatile uint32_t startCycle;
volatile uint32_t bootCycles;
volatile float bootTime_ms;
uint8_t calculated_hash[32];
uint8_t calculated_hmac[32];

uint16_t i;

uint8_t k_ipad[64];
uint8_t k_opad[64];
uint8_t tk[32];
uint8_t inner_hash[32];

SHA256_CTX ctx;
SHA256_CTX tctx;

uint8_t secret_key[16] =
{
    0x11,0x22,0x33,0x44,
    0x55,0x66,0x77,0x88,
    0x99,0xAA,0xBB,0xCC,
    0xDD,0xEE,0xFF,0x00
};

void AppCode(void)
{
    bootCycles =
        startCycle -
        CPUTimer_getTimerCount(CPUTIMER0_BASE);

    bootTime_ms =
        ((float)bootCycles * 1000.0f) /
        150000000.0f;

    while(1);
}

void hmac_sha256(uint8_t *key, uint32_t key_len, uint8_t *data, uint32_t data_len, uint8_t *out)
{
    if(key_len > 64)
    {
        sha256_init(&tctx);
        sha256_update(&tctx, key, key_len);
        sha256_final(&tctx, tk);

        key = tk;
        key_len = 32;
    }

    memset(k_ipad, 0, 64);
    memset(k_opad, 0, 64);

    memcpy(k_ipad, key, key_len);
    memcpy(k_opad, key,key_len);

    for(i = 0; i < 64; i++)
    {
        k_ipad[i] ^= 0x36;
        k_opad[i] ^= 0x5C;
    }

    sha256_init(&ctx);
    sha256_update(&ctx, k_ipad, 64);
    sha256_update(&ctx, data, data_len);
    sha256_final(&ctx, inner_hash);

    sha256_init(&ctx);
    sha256_update(&ctx, k_opad,64);
    sha256_update(&ctx, inner_hash, 32);
    sha256_final(&ctx, out);
}

void jumpToApp(void)
{
    void (*appEntry)(void);

    appEntry = AppCode;

    appEntry();
}

void main(void){
    Device_init();
    Device_initGPIO();

    CPUTimer_setPeriod(CPUTIMER0_BASE,0xFFFFFFFF);
    CPUTimer_startTimer(CPUTIMER0_BASE);

    // startCycle =
    //     CPUTimer_getTimerCount(CPUTIMER0_BASE);
    // SHA256_CTX ctx;

    // sha256_init(&ctx);

    // sha256_update(&ctx,
    //             (uint8_t *)0x0A0000,
    //             512);

    // sha256_final(&ctx,
    //             calculated_hash);

    startCycle =
    CPUTimer_getTimerCount(CPUTIMER0_BASE);

        hmac_sha256(secret_key,
            16,
            (uint8_t *)0x0A0000,
            512,
            calculated_hmac);

    jumpToApp();
}