#include "stdio.h"
#include "unistd.h"
#include "string.h"
#include "fcntl.h"
#include "sys/types.h"
#include "math.h"


#define BT_CONF "./ds1302.conf" 
#define DATE_WR_FILE "./time_output"
#define GPIO_DIR "/sys/class/gpio/"
#define WR_ADD 0X80
#define RD_ADD 0X81


char time[16];
//the type of time is ss:mm:dd#mm:yyyy


int time(char *time,int add,char class)
{
	char add_hex;
	char *add_bin_buf;
	char *time_bin_buf:
	add_bin_buf = malloc(20);
	time_bin_buf = malloc(20);
	int i = 0;
	int j = 0;
	//char time_bin_buf[20];
	//char add_bin_buf[20]={"1000"};
	//int add_i;
	//int time_i;
	
	*add_bin_buf = '1';
	*(add_bin_buf+1) = '0';
	*(add_bin_buf+2) = '0';
	*(add_bin_buf+3) = '0';
	
	while(add <=  0X8F)
	{
		//write address
		sprintf(add_bin_buf+4,"%d",hex_bin_tran(add));
		while(i <= 7)
		{
			if(0 != date_write_single(*(add_bin_buf+i)))
			{
				printf("write error error message :\n");
				printf("error address is %d bit %d",add,i);
			}
			i=i+1;

		}

		//write or read date 
		//remember to change the define of point and array
		while(j <= 7)
		{
			*(time_bin_buf+j) = date_read_single();
			j = j+1;
		}
		sprintf(time_bin_buf,"%d",




int ce_action(char *add,char date,int W_R)
{
	int ce_dir;
	const char ce_direction[4]="out";
	//setting direction of ce
	printf("setting direction of gpio ce\n");
	//sprintf(ce_add_str,"/sys/class/gpio/gpio%s/direction",ce_str);
	ce_dir = open(ce_add_str,O_WRONLY);
	write(ce_dir,ce_direction,4);
	close(ce_dir);
	printf("setting finish\n");
	//setting finish

	//setting the value of ce into 1, enable the devices
	char ce[2]="1";
	printf("setting ce value = 1 enable device of DS1302");
	//sprintf(ce_add_str,"/sys/class/gpio%s/value",ce_str);
	ce_dir = open(ce_add_str,O_WRONLY);
	write(ce_dir,ce,2);
	close(ce_dir);
	//setting finish
}

char date_read_single(void)
{

	//write address
	char date[2];
	char clk[2];

	sprintf(clk,"1");

	//sprintf(clk_add_str,"/sys/class/gpio%s/value",clk_str);
	//sprintf(date_add_str,"/sys/class/gpio%s/value",clk_str);
	
	date_dir = open (date_add_str,O_RDONLY);
	clk_dir = open(clk_add_str,O_WRONLY);

	read(date_dir,date);
	close(date_dir);
	usleep(20);
	write(clk_dir,clk,2);
	close(clk_dir);
	usleep(20);
	clk_dir = open(clk_add_str,O_WRONLY);
	sprintf(clk,"0");
	write(clk_dir,clk,2);
	close(clk_dir);
	
	return date[0];

}
	


int date_write_single(char date)
{
	//write address
	char date[2];
	char clk[2];

	sprintf(clk,"1");
	sprintf(date,"%c",date);

	sprintf(clk_add_str,"/sys/class/gpio%s/value",clk_str);
	sprintf(date_add_str,"/sys/class/gpio%s/value",clk_str);
	
	date_dir = open (date_add_str,O_WRONLY);
	clk_dir = open(clk_add_str,O_WRONLY);

	write(date_dir,date,2);
	close(date_dir);
	usleep(20);
	write(clk_dir,clk,2);
	close(clk_dir);
	usleep(20);
	clk_dir = open(clk_add_str,O_WRONLY);
	sprintf(clk,"0");
	write(clk_dir,clk,2);
	close(clk_dir);
	
	return 0;
}
	
int bin_int_tran(char *binary,int num_bit)
{
	int num_bit_cur = 0;
	int date_return = 0;

	while(num_bit_cur < num_bit)
	{
		int power;
		power = (int)pow(2,num_bit_cur++);
		date_return = date_return+(*binary)*power;
	}

	return date_return;

}
	
int hex_bin_tran(char *hex, char *binary)
{
	date_return = 0;
	switch(*hex)
	{
	case '0': date_return = 0000;
		break;
	case '1': date_return = 0001;
		break;
	case '2': date_return = 0010;
		break;
	case '3':date_return = 0011;
		break;
	case '4':date_return = 0100;
		break;
	case '5':date_return = 0101;
		break;
	case '6':date_return = 0110;
		break;
	case '7':date_return = 0111;
		break;
	case '8':date_return = 1000;
		break;
	case '9':date_return = 1001;
		break;
	case 'A':date_return = 1010;
		break;
	case 'B':date_return = 1011;
		break;
	case 'C':date_return = 1100;
		break;
	case 'D':date_return = 1101;
		break;
	case 'E':date_return = 1110;
		break;
	case 'F':date_return = 1111;
	}
	return date_return;
}


int main(void)
{
	char clk_str[3];
	char ce_str[3];
	char date_str[3];

	char clk_add_str[30];
	char ce_add_str[30];
	char date_add_str[30];

	char set_str[800];
	char read_flag[2];
	char read_already[2]="#";

	int conf_int;
	int write_int;

	conf_int = open(BT_CONF,O_RDONLY);
	read(conf_int,set_str,9);
	//definr the using of gpio
	clk_str[0] = set_str[0];
	clk_str[1] = set_str[1];

	ce_str[0] = set_str[3];
	ce_str[1] = set_str[4];

	date_str[0] = set_str[6];
	date_str[1] = set_str[7];
	//defien finish

	//make the dir of gpio
	sprintf(clk_add_str,"/sys/class/gpio/gpio%s/direction",clk_str);
	sprintf(ce_add_str,"/sys/class/gpio/gpio%s/direction",ce_str);
	sprintf(date_add_str,"/sys/class/gpio/gpio%s/direction",date_str);
	//make finish
	
	

	

	write_int = open(DATE_WR_FLIE,O_WRONLY|O_APPEND);
	lseek(write_int,-1,SEEK_END);
	read(write_int,read_flag,2);
	if(strcmp(read_flag,read_already)==0)
	{
		close(write_int);
		write_int = open(DATE_WR,O_WRONLY);
	}

	sprintf(clk_str,"/sys/class/gpio/%s",

