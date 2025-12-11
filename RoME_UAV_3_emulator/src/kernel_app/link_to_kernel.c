#include "link_to_kernel.h"
#include <stdio.h>
#include <time.h>

int32_t user_ms = 0;

uint8_t inputs[21];
uint8_t outputs[9];

struct _struct_safety_variables *get_safety_variables()
{
	return &safety_variables.fields;
}

void start()
{

	// clock_gettime(CLOCK_MONOTONIC_RAW, &start);
}

void get_ms_tick(int32_t *ms)
{
	int32_t ms_now;

	clock_t stop;
	stop = clock();

	ms_now = (int32_t)(((double)stop / CLOCKS_PER_SEC) * 1000);
	*ms = ms_now + user_ms;
}

void set_ms_tick(int32_t _ms)
{
	int32_t ms_now = (int32_t)(((double)clock() / CLOCKS_PER_SEC) * 1000);
	user_ms = _ms - ms_now;
}

void read_global_input(uint8_t id, uint8_t *val)
{
	*val = inputs[id];
}
void write_global_output(uint8_t id, uint8_t val)
{
	outputs[id] = val;
}

uint8_t read_output(uint8_t id)
{
	return outputs[id];
}

void write_input(uint8_t id, uint8_t val)
{

	inputs[id] = val;
}

void print_uint8(uint8_t val1, uint8_t val2)
{
	// printf("log : %i %i ", val1,val2);
}

void print_global_inputs()
{
}

void g_standard_types__initialisation() {}
void g_operators__initialisation() {}
void io_constants__initialisation() {}
void lchip_configuration__initialisation() {}
