#include <stdio.h>
#include <gb/gb.h>
#include "player.h"

int main(void)
{
	uint8_t currentspriteindex = 0;

	set_sprite_data(0, 2, MyPlayer);
	set_sprite_tile(0, 0);
	move_sprite(0, 88, 78);

	SHOW_SPRITES;

	printf("WOW");

	while (1)
	{

		switch (joypad())
		{
			case J_LEFT:
				scroll_sprite(0, -4, 0);
				break;
			case J_RIGHT:
				scroll_sprite(0, 4, 0);
				break;
			case J_UP:
				scroll_sprite(0, 0, -4);
				break;
			case J_DOWN:
				scroll_sprite(0, 0, 4);
				break;
		}
		delay(60);
	}

	return 0;
}
