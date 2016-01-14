.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Landroid/net/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 664
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 665
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 666
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 667
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 772
    const-string v8, "CTRL-EVENT-"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 773
    const-string v7, "WPA:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    const-string v7, "Authentication with"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "timed out"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 779
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24007

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 984
    :cond_2
    :goto_0
    return v6

    .line 780
    :cond_3
    const-string v6, "WAPI:"
 
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
 
    move-result v6
 
    if-eqz v6, :cond_miui_0
 
    const-string v6, "pre-shared key may be incorrect"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
 
    move-result v6
 
    if-lez v6, :cond_miui_1
 
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;
 
    const v7, 0x24007
 
    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
 
    goto :goto_0
 
    :cond_miui_0
    const-string v6, "WAPI:"
 
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
 
    move-result v6
 
    if-eqz v6, :cond_miui_0
 
    const-string v6, "pre-shared key may be incorrect"
 
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
 
    move-result v6
 
    if-lez v6, :cond_miui_0
 
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;
 
    const v7, 0x24007
 
    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
 
    goto :goto_0
 
    :cond_miui_1
    const-string v7, "WPS-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 781
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24008

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 782
    :cond_4
    const-string v7, "WPS-FAIL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 783
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_5
    const-string v7, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 785
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2400a

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 786
    :cond_6
    const-string v7, "WPS-TIMEOUT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 787
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2400b

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 788
    :cond_7
    const-string v7, "P2P"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 789
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_8
    const-string v7, "AP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 791
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_9
    const-string v7, "EAP-FAST-NEW-PAC-UPDATED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 794
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24034

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 796
    :cond_a
    const-string v7, "WHOLE-CHIP-RESET-FAIL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 797
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24035

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 799
    :cond_b
    const-string v7, "WPS-ER-ENROLLEE-ADD-PBC"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 800
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24036

    invoke-virtual {v7, v8, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 801
    :cond_c
    const-string v7, "WPS-ER-AP-ADD"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 802
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24037

    invoke-virtual {v7, v8, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 807
    :cond_d
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t identify event type - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    :cond_e
    # getter for: Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "eventName":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 814
    .local v4, "nameEnd":I
    if-eq v4, v9, :cond_f

    .line 815
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 816
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_10

    .line 817
    const-string v7, "WifiMonitor"

    const-string v8, "Received wpa_supplicant event with empty event name"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 824
    :cond_10
    const-string v8, "CONNECTED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 825
    const/4 v0, 0x1

    .line 905
    .local v0, "event":I
    :goto_1
    move-object v1, p1

    .line 907
    .local v1, "eventData":Ljava/lang/String;
    if-eq v0, v11, :cond_11

    const/4 v8, 0x5

    if-eq v0, v8, :cond_11

    const v8, 0x2403d

    if-eq v0, v8, :cond_11

    const v8, 0x2403e

    if-eq v0, v8, :cond_11

    const v8, 0x24040

    if-eq v0, v8, :cond_11

    const v8, 0x24041

    if-eq v0, v8, :cond_11

    const v8, 0x24042

    if-eq v0, v8, :cond_11

    const v8, 0x24043

    if-eq v0, v8, :cond_11

    const v8, 0x2404a

    if-eq v0, v8, :cond_11

    const v8, 0x2404b

    if-eq v0, v8, :cond_11

    const v8, 0x2404e

    if-eq v0, v8, :cond_11

    const v8, 0x2404f

    if-eq v0, v8, :cond_11

    const v8, 0x24050

    if-eq v0, v8, :cond_11

    const v8, 0x24056

    if-eq v0, v8, :cond_11

    const v8, 0x24057

    if-ne v0, v8, :cond_39

    .line 913
    :cond_11
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 914
    .local v5, "tmpStringArray":[Ljava/lang/String;
    array-length v8, v5

    if-le v8, v7, :cond_38

    .line 915
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v7

    .line 936
    .end local v5    # "tmpStringArray":[Ljava/lang/String;
    :cond_12
    :goto_2
    if-ne v0, v10, :cond_3d

    .line 937
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 983
    :cond_13
    :goto_3
    iput v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    goto/16 :goto_0

    .line 826
    .end local v0    # "event":I
    .end local v1    # "eventData":Ljava/lang/String;
    :cond_14
    const-string v8, "DISCONNECTED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 827
    const/4 v0, 0x2

    .line 829
    .restart local v0    # "event":I
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_1

    .line 830
    .end local v0    # "event":I
    :cond_15
    const-string v8, "STATE-CHANGE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 831
    const/4 v0, 0x3

    .restart local v0    # "event":I
    goto :goto_1

    .line 832
    .end local v0    # "event":I
    :cond_16
    const-string v8, "SCAN-RESULTS"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 833
    const/4 v0, 0x4

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 834
    .end local v0    # "event":I
    :cond_17
    const-string v8, "LINK-SPEED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 835
    const/4 v0, 0x5

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 836
    .end local v0    # "event":I
    :cond_18
    const-string v8, "TERMINATING"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 837
    const/4 v0, 0x6

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 838
    .end local v0    # "event":I
    :cond_19
    const-string v8, "DRIVER-STATE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 839
    const/4 v0, 0x7

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 840
    .end local v0    # "event":I
    :cond_1a
    const-string v8, "EAP-FAILURE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 841
    const/16 v0, 0x8

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 842
    .end local v0    # "event":I
    :cond_1b
    const-string v8, "ASSOC-REJECT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 843
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 845
    .end local v0    # "event":I
    :cond_1c
    const-string v8, "EAP-NO-CERTIFICATION"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 846
    const/16 v0, 0xb

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 848
    .end local v0    # "event":I
    :cond_1d
    const-string v8, "HS20-ANQP-DONE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 849
    const v0, 0x2403c

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 850
    .end local v0    # "event":I
    :cond_1e
    const-string v8, "HS20-REM-URL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 851
    const v0, 0x2403d

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 852
    .end local v0    # "event":I
    :cond_1f
    const-string v8, "HS20-ICON-RECV"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 853
    const v0, 0x2403e

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 854
    .end local v0    # "event":I
    :cond_20
    const-string v8, "HS20-IPV4-DAD"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 855
    const v0, 0x24040

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 856
    .end local v0    # "event":I
    :cond_21
    const-string v8, "HS20-IPV6-DAD"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 857
    const v0, 0x24041

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 858
    .end local v0    # "event":I
    :cond_22
    const-string v8, "HS20-POLICY-UPDATE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 859
    const v0, 0x24042

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 860
    .end local v0    # "event":I
    :cond_23
    const-string v8, "HS20-INSTALL-PPSMO"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 861
    const v0, 0x24043

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 862
    .end local v0    # "event":I
    :cond_24
    const-string v8, "HS20-CONNECT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 863
    const v0, 0x24044

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 864
    .end local v0    # "event":I
    :cond_25
    const-string v8, "HS20-DEFAULT-RESET"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 865
    const v0, 0x24046

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 866
    .end local v0    # "event":I
    :cond_26
    const-string v8, "HS20-ICON-RECV-TIMEOUT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 867
    const v0, 0x24047

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 868
    .end local v0    # "event":I
    :cond_27
    const-string v8, "HS20-DUMP-TOAST"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 869
    const v0, 0x24048

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 870
    .end local v0    # "event":I
    :cond_28
    const-string v8, "HS20-ADD-CREDENTIAL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 871
    const v0, 0x24049

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 872
    .end local v0    # "event":I
    :cond_29
    const-string v8, "HS20-BTM-URL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 873
    const v0, 0x2404a

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 874
    .end local v0    # "event":I
    :cond_2a
    const-string v8, "HS20-WEB-INSTALL-PPSMO"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 875
    const v0, 0x2404b

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 876
    .end local v0    # "event":I
    :cond_2b
    const-string v8, "HS20-SET-OSU-CONNECT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 877
    const v0, 0x2404c

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 878
    .end local v0    # "event":I
    :cond_2c
    const-string v8, "HS20-SET-OSU-CONNECT-NO"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 879
    const v0, 0x2404d

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 880
    .end local v0    # "event":I
    :cond_2d
    const-string v8, "HS20-SET-PROV-PROTOCOL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 881
    const v0, 0x2404e

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 882
    .end local v0    # "event":I
    :cond_2e
    const-string v8, "HS20-DEAUTH-URL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 883
    const v0, 0x2404f

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 884
    .end local v0    # "event":I
    :cond_2f
    const-string v8, "HS20-SVR-MTD"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 885
    const v0, 0x24050

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 886
    .end local v0    # "event":I
    :cond_30
    const-string v8, "HS20-WEB-INSTALL-ROOTCA"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 887
    const v0, 0x24051

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 888
    .end local v0    # "event":I
    :cond_31
    const-string v8, "EAP-FAILURE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 889
    const v0, 0x24052

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 890
    .end local v0    # "event":I
    :cond_32
    const-string v8, "HS20-UNLOCK-AUTH"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 891
    const v0, 0x24053

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 892
    .end local v0    # "event":I
    :cond_33
    const-string v8, "HS20-IGNORE-BLACKLIST"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 893
    const v0, 0x24054

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 894
    .end local v0    # "event":I
    :cond_34
    const-string v8, "HS20-WEB-INSTALL-CLIENTCA"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 895
    const v0, 0x24055

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 896
    .end local v0    # "event":I
    :cond_35
    const-string v8, "HS20-PPSMO-MNC-LENGTH"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 897
    const v0, 0x24056

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 898
    .end local v0    # "event":I
    :cond_36
    const-string v8, "HS20-MGNT-TREE-URI"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 899
    const v0, 0x24057

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 903
    .end local v0    # "event":I
    :cond_37
    const/16 v0, 0xa

    .restart local v0    # "event":I
    goto/16 :goto_1

    .line 917
    .restart local v1    # "eventData":Ljava/lang/String;
    .restart local v5    # "tmpStringArray":[Ljava/lang/String;
    :cond_38
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 919
    .end local v5    # "tmpStringArray":[Ljava/lang/String;
    :cond_39
    if-eq v0, v10, :cond_3a

    const/16 v8, 0x8

    if-eq v0, v8, :cond_3a

    const v8, 0x24048

    if-eq v0, v8, :cond_3a

    const v8, 0x24049

    if-eq v0, v8, :cond_3a

    const v8, 0x2404c

    if-eq v0, v8, :cond_3a

    const v8, 0x24051

    if-eq v0, v8, :cond_3a

    const v8, 0x2404d

    if-eq v0, v8, :cond_3a

    const v8, 0x24052

    if-eq v0, v8, :cond_3a

    const v8, 0x24053

    if-eq v0, v8, :cond_3a

    const v8, 0x24054

    if-ne v0, v8, :cond_3b

    .line 923
    :cond_3a
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 924
    .local v3, "ind":I
    if-eq v3, v9, :cond_12

    .line 925
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 927
    .end local v3    # "ind":I
    :cond_3b
    const v8, 0x24055

    if-ne v0, v8, :cond_3c

    .line 928
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 930
    :cond_3c
    const-string v8, " - "

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 931
    .restart local v3    # "ind":I
    if-eq v3, v9, :cond_12

    .line 932
    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 938
    .end local v3    # "ind":I
    :cond_3d
    if-ne v0, v11, :cond_3e

    .line 939
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 940
    :cond_3e
    const/4 v8, 0x6

    if-ne v0, v8, :cond_41

    .line 941
    const-string v8, "WifiMonitor"

    const-string v9, "event == TERMINATING "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string/jumbo v8, "recv error"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 947
    iget v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_2

    .line 949
    const-string v6, "WifiMonitor"

    const-string/jumbo v8, "too many recv errors, closing connection"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_3f
    if-eqz p2, :cond_40

    const-string v6, "ap0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 958
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24002

    invoke-virtual {v6, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 960
    :cond_40
    const-string v6, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exit because of receiving terminating for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 961
    goto/16 :goto_0

    .line 962
    :cond_41
    const/16 v7, 0x8

    if-ne v0, v7, :cond_42

    .line 963
    const-string v7, "EAP authentication failed"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 964
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24007

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 966
    :cond_42
    const/16 v7, 0x9

    if-ne v0, v7, :cond_43

    .line 967
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2402b

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 968
    :cond_43
    const v7, 0x2403c

    if-eq v0, v7, :cond_44

    const v7, 0x2403d

    if-eq v0, v7, :cond_44

    const v7, 0x2403e

    if-eq v0, v7, :cond_44

    const v7, 0x24040

    if-eq v0, v7, :cond_44

    const v7, 0x24041

    if-eq v0, v7, :cond_44

    const v7, 0x24042

    if-eq v0, v7, :cond_44

    const v7, 0x24043

    if-eq v0, v7, :cond_44

    const v7, 0x2404a

    if-eq v0, v7, :cond_44

    const v7, 0x2404b

    if-eq v0, v7, :cond_44

    const v7, 0x2404e

    if-eq v0, v7, :cond_44

    const v7, 0x2404f

    if-eq v0, v7, :cond_44

    const v7, 0x24050

    if-eq v0, v7, :cond_44

    const v7, 0x24056

    if-eq v0, v7, :cond_44

    const v7, 0x24048

    if-eq v0, v7, :cond_44

    const v7, 0x24049

    if-eq v0, v7, :cond_44

    const v7, 0x2404c

    if-eq v0, v7, :cond_44

    const v7, 0x24051

    if-eq v0, v7, :cond_44

    const v7, 0x2404d

    if-eq v0, v7, :cond_44

    const v7, 0x24052

    if-eq v0, v7, :cond_44

    const v7, 0x24053

    if-eq v0, v7, :cond_44

    const v7, 0x24054

    if-eq v0, v7, :cond_44

    const v7, 0x24055

    if-eq v0, v7, :cond_44

    const v7, 0x24044

    if-eq v0, v7, :cond_44

    const v7, 0x24046

    if-eq v0, v7, :cond_44

    const v7, 0x24047

    if-eq v0, v7, :cond_44

    const v7, 0x24057

    if-ne v0, v7, :cond_45

    .line 978
    :cond_44
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHS20Event(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 980
    :cond_45
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 988
    if-nez p1, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v7, 0x2402a

    const v6, 0x24029

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1317
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, "tokens":[Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHostApEvents mWifiNative.mInterfaceName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v3, v3, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minitor.iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    aget-object v1, v0, v4

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1323
    if-nez p2, :cond_0

    const-string/jumbo p2, "whatever"

    .line 1324
    :cond_0
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1325
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1327
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1331
    :cond_3
    aget-object v1, v0, v4

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1333
    if-nez p2, :cond_4

    const-string/jumbo p2, "whatever"

    .line 1334
    :cond_4
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1335
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1337
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 6
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1401
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1402
    .local v3, "networkId":I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 1403
    # getter for: Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1404
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1405
    const-string v4, "WifiMonitor"

    const-string v5, "Could not find BSSID in CONNECTED event string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1416
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_0
    return-void

    .line 1407
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1409
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1410
    :catch_0
    move-exception v1

    .line 1411
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 1239
    const-string v3, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1240
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24015

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    const-string v3, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1242
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24016

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1243
    :cond_2
    const-string v3, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1244
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24025

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1245
    :cond_3
    const-string v3, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1246
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24017

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1248
    :cond_4
    const-string v3, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1249
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24019

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1250
    :cond_5
    const-string v3, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1251
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1252
    :cond_6
    const-string v3, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1253
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1254
    :cond_7
    const-string v3, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1255
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1256
    :cond_8
    const-string v3, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1257
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401d

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1258
    :cond_9
    const-string v3, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1261
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401e

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError_GroupRemove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1262
    :cond_a
    const-string v3, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1263
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401f

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1265
    :cond_b
    const-string v3, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1266
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1267
    :cond_c
    const-string v3, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1268
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24021

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1270
    :cond_d
    const-string v3, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1271
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24022

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1273
    :cond_e
    const-string v3, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1274
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24023

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1276
    :cond_f
    const-string v3, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1277
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24024

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1279
    :cond_10
    const-string v3, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1280
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24027

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1281
    :cond_11
    const-string v3, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1282
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1283
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 1284
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24026

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1286
    :cond_12
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null service resp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1289
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v3, "CTRL-EVENT-DISCONNECTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1292
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1293
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 1294
    aget-object v3, v2, v5

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, v5, :cond_0

    .line 1296
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24028

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1298
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_14
    const-string v3, "P2P-NFC-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1299
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24038

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1300
    :cond_15
    const-string v3, "P2P-GO-IP-ALLOCATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1301
    const-string v3, "WifiMonitor"

    const-string v4, "handleP2pEvents, send P2P_GO_IP_ALLOCATE_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24039

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1303
    :cond_16
    const-string v3, "P2P-GC-IP-GET"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1304
    const-string v3, "WifiMonitor"

    const-string v4, "handleP2pEvents, send P2P_GC_IP_GET_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2403a

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1306
    :cond_17
    const-string v3, "P2P-NFC-GO-INVITED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1307
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2403b

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1348
    const/16 v16, 0x0

    .line 1349
    .local v16, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1350
    .local v7, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 1351
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 1354
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1356
    .local v4, "dataTokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1357
    .local v2, "BSSID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1358
    .local v10, "networkId":I
    const/4 v11, -0x1

    .line 1359
    .local v11, "newState":I
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 1360
    .local v14, "token":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1361
    .local v9, "nameValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1359
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1365
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1366
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 1367
    goto :goto_1

    .line 1372
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1377
    .local v15, "value":I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1378
    move v10, v15

    goto :goto_1

    .line 1373
    .end local v15    # "value":I
    :catch_0
    move-exception v5

    .line 1374
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1379
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "value":I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1380
    move v11, v15

    goto :goto_1

    .line 1384
    .end local v9    # "nameValue":[Ljava/lang/String;
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "value":I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 1397
    .end local v3    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1386
    .restart local v3    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1387
    .local v12, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 1388
    .local v13, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 1389
    move-object v12, v13

    .line 1393
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 1394
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 1387
    .restart local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 1164
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1165
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1166
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1167
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "cfgErr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1171
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1182
    :cond_0
    if-eqz v0, :cond_1

    .line 1183
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1196
    .end local v0    # "cfgErr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1198
    :goto_0
    return-void

    .line 1173
    .restart local v0    # "cfgErr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1177
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1185
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1189
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1183
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1202
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1203
    .local v1, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 1217
    :goto_0
    return-object v4

    .line 1205
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 1209
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1210
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 1213
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 1217
    goto :goto_0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private p2pError_GroupRemove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 5
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 1223
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1224
    .local v0, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1226
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v4, :cond_1

    .line 1232
    .end local v0    # "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_0
    :goto_0
    return-object v0

    .line 1227
    .restart local v0    # "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_1
    aget-object v3, v2, v4

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, "nameValue":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "FREQ_CONFLICT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1230
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1003
    sparse-switch p1, :sswitch_data_0

    .line 1023
    :goto_0
    return-void

    .line 1005
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1017
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24033

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1003
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method handleHS20Event(ILjava/lang/String;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1033
    packed-switch p1, :pswitch_data_0

    .line 1161
    :goto_0
    :pswitch_0
    return-void

    .line 1035
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyAnqpDone()V

    goto :goto_0

    .line 1039
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyRemUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    :pswitch_3
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIconReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :pswitch_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIpDad(ILjava/lang/String;)V

    goto :goto_0

    .line 1051
    :pswitch_5
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIpDad(ILjava/lang/String;)V

    goto :goto_0

    .line 1055
    :pswitch_6
    const/4 v2, 0x0

    .line 1057
    .local v2, "interval":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1062
    :goto_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyPolicyUpdate(I)V

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HS20-POLICY-UPDATE non-integer parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v2, 0x0

    goto :goto_1

    .line 1066
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "interval":I
    :pswitch_7
    const/4 v1, 0x0

    .line 1068
    .local v1, "index":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1073
    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyInstallPpsmo(I)V

    goto :goto_0

    .line 1069
    :catch_1
    move-exception v0

    .line 1070
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HS20-INSTALL-PPSMO non-integer parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v1, 0x0

    goto :goto_2

    .line 1077
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "index":I
    :pswitch_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyHsConnect()V

    goto :goto_0

    .line 1081
    :pswitch_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyHsReset()V

    goto :goto_0

    .line 1085
    :pswitch_a
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIconRecvTimeout()V

    goto :goto_0

    .line 1089
    :pswitch_b
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyDumpToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyAddCred(Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :pswitch_d
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyBtmUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :pswitch_e
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyWebInstallPpsmoMncLength(Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :pswitch_f
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyWebInstallPpsmo(Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySetProvProtocol(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :pswitch_11
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySetOsuConnect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1117
    :pswitch_12
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_SET_OSU_CONNECT_NO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySetOsuConnectNo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    :pswitch_13
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_DEAUTH_URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyDeauthUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1127
    :pswitch_14
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_SERVER_METHOD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyServerMethod(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1132
    :pswitch_15
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_WEB_INSTALL_AAA_ROOTCA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyInstallAAARootCA(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1137
    :pswitch_16
    const-string v3, "WifiMonitor"

    const-string v4, "handleEvent HS20_WEB_INSTALL_CLIENT_CERT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyInstallClientCert()V

    goto/16 :goto_0

    .line 1142
    :pswitch_17
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_EAP_FAILURE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :pswitch_18
    const-string v3, "WifiMonitor"

    const-string v4, "handleEvent HS20_RESET_EAP_FAILURE_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyResetEapFailureCount()V

    goto/16 :goto_0

    .line 1152
    :pswitch_19
    const-string v3, "WifiMonitor"

    const-string v4, "handleEvent HS20_IGNORE_BLACKLIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyIgnoreBlackList()V

    goto/16 :goto_0

    .line 1157
    :pswitch_1a
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent HS20_PPSMO_MANAGEMENT_TREE_URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyMgntTreeUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x2403c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_16
        :pswitch_e
        :pswitch_1a
    .end packed-switch
.end method

.method notifyAddCred(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 1495
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24049

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1496
    return-void
.end method

.method notifyAnqpDone()V
    .locals 3

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403c

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1456
    return-void
.end method

.method notifyBtmUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404a

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1500
    return-void
.end method

.method notifyDeauthUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1519
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1520
    return-void
.end method

.method notifyDumpToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24048

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1492
    return-void
.end method

.method notifyEapFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24052

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1536
    return-void
.end method

.method notifyHsConnect()V
    .locals 3

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24044

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1476
    return-void
.end method

.method notifyHsReset()V
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24046

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1480
    return-void
.end method

.method notifyIconReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 1483
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1484
    return-void
.end method

.method notifyIconRecvTimeout()V
    .locals 3

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24047

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1488
    return-void
.end method

.method notifyIgnoreBlackList()V
    .locals 3

    .prologue
    .line 1543
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24054

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1544
    return-void
.end method

.method notifyInstallAAARootCA(Ljava/lang/String;)V
    .locals 3
    .param p1, "certFile"    # Ljava/lang/String;

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24051

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1528
    return-void
.end method

.method notifyInstallClientCert()V
    .locals 3

    .prologue
    .line 1531
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24055

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1532
    return-void
.end method

.method notifyInstallPpsmo(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1471
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24043

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1472
    return-void
.end method

.method notifyIpDad(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1464
    return-void
.end method

.method notifyMgntTreeUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1551
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24057

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1552
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1429
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1430
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1432
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1438
    :goto_0
    return-void

    .line 1434
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1436
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifyPolicyUpdate(I)V
    .locals 3
    .param p1, "interval"    # I

    .prologue
    .line 1467
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24042

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1468
    return-void
.end method

.method notifyRemUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1459
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2403d

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1460
    return-void
.end method

.method notifyResetEapFailureCount()V
    .locals 3

    .prologue
    .line 1539
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24053

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1540
    return-void
.end method

.method notifyServerMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24050

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1524
    return-void
.end method

.method notifySetOsuConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 1511
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1512
    return-void
.end method

.method notifySetOsuConnectNo(Ljava/lang/String;)V
    .locals 3
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404d

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1516
    return-void
.end method

.method notifySetProvProtocol(Ljava/lang/String;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 1507
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1508
    return-void
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    new-instance v3, Landroid/net/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1452
    return-void
.end method

.method notifyWebInstallPpsmo(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2404b

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1504
    return-void
.end method

.method notifyWebInstallPpsmoMncLength(Ljava/lang/String;)V
    .locals 3
    .param p1, "length"    # Ljava/lang/String;

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24056

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1548
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 672
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "eventStr":Ljava/lang/String;
    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 676
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    const-string/jumbo v3, "p2p0"

    .line 680
    .local v3, "iface":Ljava/lang/String;
    const/4 v5, 0x0

    .line 681
    .local v5, "m":Landroid/net/wifi/WifiMonitor;
    iput-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 683
    const-string v7, "IFNAME="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 684
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 685
    .local v6, "space":I
    if-eq v6, v11, :cond_4

    .line 686
    const/4 v7, 0x7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 687
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 689
    if-nez v5, :cond_2

    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hcan get mm  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_2
    if-nez v5, :cond_3

    const-string/jumbo v7, "p2p-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 694
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 696
    :cond_3
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    .end local v6    # "space":I
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 716
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 717
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 725
    :cond_5
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v7, :cond_a

    .line 726
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 729
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ap0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 730
    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v10}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 731
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 732
    const-string v7, "WifiMonitor"

    const-string v8, "ap0 get TEMINATING 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_6
    :goto_2
    return-void

    .line 701
    :cond_7
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string v8, "ap0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 702
    if-eqz v5, :cond_8

    .line 703
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 707
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_1

    .line 711
    :cond_8
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_1

    .line 719
    :cond_9
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping event because monitor ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is stopped"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    :cond_a
    const-string v7, "WifiMonitor"

    const-string v8, "Sending to all monitors because there\'s no interface id"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "done":Z
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 741
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_b
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 742
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 743
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Landroid/net/wifi/WifiMonitor;
    check-cast v5, Landroid/net/wifi/WifiMonitor;

    .line 744
    .restart local v5    # "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 745
    invoke-direct {p0, v2, v12}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 746
    const/4 v0, 0x1

    goto :goto_3

    .line 750
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    :cond_c
    if-eqz v0, :cond_0

    .line 753
    # getter for: Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ap0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 754
    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5, v10}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 755
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 756
    const-string v7, "WifiMonitor"

    const-string v8, "ap0 get TEMINATING 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_d
    const-string v7, "WifiMonitor"

    const-string v8, "Disconnecting from the supplicant, no more events"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v10}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$602(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    goto/16 :goto_2
.end method
