#ifndef _USER_FUNCTION_H
#define _USER_FUNCTION_H
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "SDL/SDL.h"
#include "scene.h"
#include "iic/mmp_iic.h"
#include "capture_module/pr2000.h"
#include "ite/itu.h"
#include "itu_cfg.h"
#include "itu_private.h"
#include "mjpeg/mjpeg_player.h"
#include "project.h"


#define TEST_SET_ON		0

#define TEST_CAM		0

#define DOOR_1_ON			98		//�����1 ����GPIO
#define DOOR_2_ON			99		//�����2 ����GPIO
#define DOOR_3_ON			0		//�����3 ����GPIO
#define DOOR_4_ON			0		//�����4 ����GPIO

#define DOOR_1_CALL			6		//�����1 ���GPIO
#define DOOR_2_CALL			5		//�����2 ���GPIO
#define DOOR_3_CALL			0		//�����3 ���GPIO
#define DOOR_4_CALL			0		//�����4���GPIO

#define DOOR_1				0
#define DOOR_2				1
#define CCTV_1				2
#define CCTV_2				3

#define DOOR_1_OPEN		88		//�����1 ����GPIO	
#define DOOR_2_OPEN		89		//�����2 ����GPIO	

#define CCTV_1_ON			0
#define CCTV_2_ON			0

#define DOOR_RING			29		//������������������
#define DOOR_1_AUDIO		28
#define AUDIO_IN			27
#define AUDIO_OUT			26
#define DOOR_2_AUDIO		25

#define CONV_CONT			22		//34118 IC ���ƿ���
#define MIC_NUTE			30		// ����ͨ����������������



#define RING_OPEN			96		//����IC
#define RING_POWER			83		//���Ź���

#define RING_VOL_1			93		
#define RING_VOL_2			94		

#define TALK_VOL_1			92
#define TALK_VOL_2			95

#define LED_CONT			63		//ָʾ��


#define INTER_CON_CNT 		38		//interphone ����


#define ON		0
#define CALL		1

#define PR2000_CONT		0x20
#define PR2000_BRGT		0x21
#define PR2000_HUE		0x22

#define ALC5616_VOL 		90

typedef enum
{
    page_home = 0,
    page_monitor,
    page_cctv,
    page_inter,
    page_inter_ing,
    page_date,
    page_media,
    page_setting,
    page_motion,
    page_standby,

    page_total
} page_id;

typedef enum
{
    signal_door_1 = 1,
    signal_door_2,
    signal_cctv_1,
    signal_cctv_2,
    signal_total = 4,
} signal_id;
#define signal_door_1_out		5
#define signal_door_2_out		6
#define signal_cctv_1_out		7
#define signal_cctv_1_out		8

typedef enum MON_STATE_TAG
{
    MON_STATE = 1,
    M_TALK_STATE,
    CALL_STATE,
    C_TALK_STATE,
    CCTV_STATE,
    MTION_STATE,
}MON_STATE_S;

typedef enum MD_EVENT_TAG
{
    MD_EVENT_CALL = 1,
    MD_EVENT_OFFER,
    MD_EVENT_INTER,
    MD_EVENT_KEY,
}MD_EVENT_S;

typedef enum
{
    sanp_display = 1,
    rec_display,
    icon_displaying,
    icon_clear,
} SNAP_REC_ICON;

typedef enum 
{
	MONITOR_S_CAM= 0,
	MONITOR_S_DIS,	
	MONITOR_S_FULL,		
	VIEW_PHOTO_S_LIST ,
	VIEW_PHOTO_S_DELETE,
	VIEW_PHOTO_S_FULL,
	VIEW_VIDEO_S_MENU ,
	VIEW_VIDEO_S_DELETE,
	VIEW_VIDEO_S_VOLUME,
	VIEW_VIDEO_S_FULL,
	POP_UP_TOTAL
}POP_UP_STATE;

typedef enum SEND_STATE_TAG
{
    SEND_BEGIN,
    SEND_START,
    SEND_STOP,
    SEND_TERMINATE,
    SEND_IDLE,
} SEND_STATE;

typedef enum
{
    STORAGE_NONE = -1,
    STORAGE_USB,
    STORAGE_SD,
    STORAGE_MAX_COUNT
} StorageType;

typedef enum
{
    STORAGE_UNKNOWN,
    STORAGE_SD_INSERTED,
    STORAGE_SD_REMOVED,
    STORAGE_USB_INSERTED,
    STORAGE_USB_REMOVED
} StorageAction;

typedef enum 
{
    UART_START = 1,
    UART_RECEIVE,
    UART_MONITOR,
    UART_MON_DOOR1,
    UART_MON_DOOR2,
    UART_MON_NOC,
    UART_CCTV,
    UART_MON_CCTV1,
    UART_MON_CCTV2,
    UART_SWITCH_1,
    UART_SWITCH_2,
    UART_SWITCH_3,
    UART_SWITCH_4,
    UART_SWITCH_OK,
    UART_POWER_ON,
    UART_POWER_ON_D,
    UART_POWER_ON_ACK,
    UART_DOOR_1,
    UART_DOOR_2,
    UART_CCTV_1,
    UART_CCTV_2,
    UART_CALL_1,
    UART_CALL_2,
    UART_CALL_JOIN,
    UART_CALL_JOIN_D,
    UART_CALL_QUIT,
    UART_CALL_OVER,
    UART_CALL_ANSWER,
    UART_RETURN,
    UART_RELEASE ,
    UART_SIGNAL_BUSY,
    UART_SIGNAL_BUSY_30,
    UART_SIGNAL_BUSY_60,
    UART_SIGNAL_NOT_BUSY,
    UART_INTER_CALL,
    UART_INTER_JOIN,
    UART_INTER_JOIN_D,
    UART_INTER_ING,
    UART_INTER_QUIT,
    UART_INTER_OVER,
    UART_INTER_ANSWER,
    UART_DOOR_1_OPEN,
    UART_DOOR_2_OPEN,
} UART_STATE;

typedef enum 
{
    CMD_MONITOR = 1,
    CMD_MON_DOOR1,
    CMD_MON_DOOR2,
    CMD_MON_NOC,
    CMD_CCTV,
    CMD_MON_CCTV1,
    CMD_MON_CCTV2,
    CMD_SWITCH_1,
    CMD_SWITCH_2,
    CMD_SWITCH_3,
    CMD_SWITCH_4,
    CMD_SWITCH_OK,
    CMD_POWER_ON,
    CMD_POWER_ON_ACK,
    CMD_DOOR_1,
    CMD_DOOR_2 ,
    CMD_CCTV_1 ,
    CMD_CCTV_2 ,
    CMD_RELEASE ,
    CMD_CALL_1,
    CMD_CALL_2,
    CMD_CALL_JOIN,
    CMD_CALL_QUIT,
    CMD_CALL_OVER,
    CMD_CALL_ANSWER,
    CMD_SIGNAL_BUSY,
    CMD_SIGNAL_BUSY_30,
    CMD_SIGNAL_BUSY_60,
    CMD_SIGNAL_NOT_BUSY,
    CMD_INTER_CALL,
    CMD_INTER_JOIN,
    CMD_INTER_ING,
    CMD_INTER_QUIT,
    CMD_INTER_OVER,
    CMD_INTER_ANSWER,
    CMD_DOOR_1_OPEN,
    CMD_DOOR_2_OPEN,
    CMD_ERROR = 0xFE,
    CMD_RETURN = 0xFF,
} UART_CMD;

typedef enum VIDEO_PLAY_TAG
{
    PLAY_START,
    PLAY_ING,
    PLAY_PAUSE,
} VIDEO_PLAY_STATE;

#define IMAGEMEMO_MAX_NAME_SIZE      20

typedef struct
{
    char name[IMAGEMEMO_MAX_NAME_SIZE]; 		//< Name displayed in UI
    char cam;									//< cam        
    char type;									//< type
    char played;    								//< Is played or not
} ImageMemoEntry;

typedef struct VideoNode
{
    char name[IMAGEMEMO_MAX_NAME_SIZE]; 		//< Name displayed in UI
    char cam;									//< cam        
    char type;									//< type
    bool played;    								//< Is played or not
} VideoMemoEntry;

//
extern bool master_vdp;				//������־
extern bool montion_enable;
extern int montion_end_event;
extern int montion_event_cmd;
extern bool need_check_video;

extern bool boot_logo;

extern uint8_t door_call_num;
extern bool call_ring_playing;
extern bool format_ing;
extern bool format_over;
extern bool delete_ing;
extern bool delete_over;
extern bool set_display_signal;

extern bool door_is_call;
extern bool door_call_out;
extern bool door_talk_out;
extern bool standby_state;

extern uint8_t ring_play; 

extern bool back_light;

//��ǰ״̬��־
extern int pre_page;
extern int cur_page;					//��ǰҳ��
extern int pre_mon_state;				//��ǰ���״̬
extern int cur_mon_state;				//��ǰ���״̬
extern int cur_call_ing;					
extern int cur_signal;					//��ǰͨ��
extern bool cur_wind;					//��ǰ�ź�ͨ��
extern bool pre_open;					//������־
extern bool cur_open;					//��ǰ������־
extern uint8_t cam_detecting;				//��������״̬
extern bool cam_detect_over;				//��������״
extern bool signal_insert[4];			//door 1 ����״̬
//extern bool door_1_insert;				//door 1 ����״̬
//extern bool door_2_insert;				//door 2 ����״̬
//extern bool cctv_1_insert;				//cctv 1 ����״̬
//extern bool cctv_2_insert;				//cctv 2 ����״̬
extern uint8_t offer_signal_channel;		//��ǰ�ṩ���ź�
extern uint8_t use_signal_channel;		//��ǰʹ�õ��ź�
extern bool cur_signal_call;				//��ǰ��ʾ�źŵ�״̬
extern bool signal_channel_busy ;		//��ǰ�ź�ͨ��æ
extern bool interphone_mast;
extern uint8_t interphone_number;		//interphone ����
extern bool cur_inter_call;				//interphone ״̬
extern uint8_t cur_inter_times;			//interphone ״̬
extern bool cur_inter_ing;				//interphone״̬
extern bool cur_talk_ing;				//ͨ��״̬
extern bool other_talk_ing;				//ͨ��״̬
extern int other_talk_id;					//ͨ��״̬
extern uint8_t cur_wash_mode;			//ͨ��״̬
extern bool sd_state_change;			//SD��״̬�仯


//�¼���־
extern int event_call;					//call ���¼�
extern int event_call_s;					//call ���¼�
extern int event_intercom;				//intercom �¼�
extern int event_uart;					//���� �¼�
extern uint8_t event_home_go;				//�������л��¼�
extern bool event_go_home;				//�л���������


//�߼���־
extern int show_snap_rec_icon;			//��ʾ����/¼��ͼ��
extern unsigned long rec_start_time;		//����¼��ʱ��
extern int temp_rec_time;				//¼��ʱ���ۼ�ֵ
extern bool pop_up[POP_UP_TOTAL];		//������־
extern uint8_t once_key_ring;					//����һ�ΰ�����
extern int cam_gpio[signal_total][2];		//	
extern SEND_STATE  gState;				//�źű�־
extern bool pr2000_signal_lock;			//�ź���
extern bool g_videoPlayerIsFileEOF;		//��Ƶ���ű�־
extern bool PlayerStop;					//������Ƶ������־
extern bool PlayerStart;
extern bool PlayerRead;
extern bool pr2000_signal_lock;
extern bool pre_singnal_lock;
extern bool pr2000_is_ok;
extern bool pr2000_start;
extern bool set_to_time_set_flag;	
extern bool auto_snap_filename;	

extern int uart_mode;
extern StorageType storageCurrType;
extern uint32_t test_tick;

extern int uart_mode ;
extern bool uart_busy ;

extern bool auto_rec_start;

typedef void (*PhotoLoadCallback)(uint8_t* data, int size);
extern uint8_t pr2000_i2c_read(uint8_t slaveAddr,uint8_t regAddr);
extern void pr2000_i2c_write(uint8_t slaveAddr,uint8_t regAddr,uint8_t val);
extern void* TestFunc_t(void* arg);

#endif