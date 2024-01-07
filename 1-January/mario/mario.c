#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int height, row, brick, space;
    do
    {
        height = get_int("Enter height here: ");
    }
    while (height < 1 || height > 8);

    for (row = 0; row < height; row++)
    {
        for (space = 0; space < height - row - 1; space++)
        {
            printf(" ");
        }
        for (brick = 0; brick <= row; brick++)
        {
            printf("#");
        }
        printf("  ");
        for (brick = 0; brick <= row; brick++)
        {
            printf("#");
        }
        printf("\n");
    }
}