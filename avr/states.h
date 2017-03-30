#ifndef STATES_H_
#define STATES_H_

typedef enum {
	NULL_STATE = 0,

	STATE_READ = 1,

	STATE_WRITE_BEGIN = 4,
	STATE_WRITE_BLOCK = 5,
	STATE_WRITE_END = 6,

	STATE_ERASE = 7,
} state_t;

state_t handle_read();
state_t handle_write_begin();
state_t handle_write_block();
state_t handle_write_end();
state_t handle_erase();

#endif /* STATES_H_ */