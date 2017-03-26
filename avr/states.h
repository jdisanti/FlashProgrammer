#ifndef STATES_H_
#define STATES_H_

typedef enum {
	NULL_STATE = 0,

	READ = 1,

	WRITE_BEGIN = 4,
	WRITE_BYTE = 5,
	WRITE_END = 6,

	ERASE = 7,
} state_t;

state_t handle_read();
state_t handle_write_begin();
state_t handle_write_byte();
state_t handle_write_end();
state_t handle_erase();

#endif /* STATES_H_ */