.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_adjustModemRadioPower:I = 0x6c

.field static final TRANSACTION_adjustModemRadioPowerByBand:I = 0x6e

.field static final TRANSACTION_adjustModemRadioPower_234G:I = 0x6d

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallGemini:I = 0x3d

.field static final TRANSACTION_btSimapApduRequest:I = 0x61

.field static final TRANSACTION_btSimapConnectSIM:I = 0x5f

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x60

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x64

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x63

.field static final TRANSACTION_btSimapResetSIM:I = 0x62

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callGemini:I = 0x39

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_cancelMissedCallsNotificationGemini:I = 0x42

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialGemini:I = 0x38

.field static final TRANSACTION_dialUpCsd:I = 0x5d

.field static final TRANSACTION_disableApnType:I = 0x1a

.field static final TRANSACTION_disableApnTypeGemini:I = 0x5b

.field static final TRANSACTION_disableDataConnectivity:I = 0x1c

.field static final TRANSACTION_disableLocationUpdates:I = 0x18

.field static final TRANSACTION_disableLocationUpdatesGemini:I = 0x4c

.field static final TRANSACTION_enableApnType:I = 0x19

.field static final TRANSACTION_enableApnTypeGemini:I = 0x5a

.field static final TRANSACTION_enableDataConnectivity:I = 0x1b

.field static final TRANSACTION_enableLocationUpdates:I = 0x17

.field static final TRANSACTION_enableLocationUpdatesGemini:I = 0x4b

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallGemini:I = 0x3c

.field static final TRANSACTION_getActivePhoneType:I = 0x23

.field static final TRANSACTION_getActivePhoneTypeGemini:I = 0x43

.field static final TRANSACTION_getAllCellInfo:I = 0x2e

.field static final TRANSACTION_getCallState:I = 0x20

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x24

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x25

.field static final TRANSACTION_getCdmaEriText:I = 0x26

.field static final TRANSACTION_getCellLocation:I = 0x1e

.field static final TRANSACTION_getDataActivity:I = 0x21

.field static final TRANSACTION_getDataNetworkType:I = 0x2a

.field static final TRANSACTION_getDataState:I = 0x22

.field static final TRANSACTION_getLine1AlphaTag:I = 0x57

.field static final TRANSACTION_getLocatedPlmn:I = 0x75

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x2d

.field static final TRANSACTION_getMissedCallCount:I = 0x6b

.field static final TRANSACTION_getMobileRevisionAndImei:I = 0x4e

.field static final TRANSACTION_getMvnoMatchType:I = 0x6f

.field static final TRANSACTION_getMvnoPattern:I = 0x70

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1f

.field static final TRANSACTION_getNetworkCountryIsoGemini:I = 0x74

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0x72

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0x71

.field static final TRANSACTION_getNetworkType:I = 0x29

.field static final TRANSACTION_getNetworkTypeGemini:I = 0x50

.field static final TRANSACTION_getPreciseCallState:I = 0x37

.field static final TRANSACTION_getServiceState:I = 0x66

.field static final TRANSACTION_getSimCountryIso:I = 0x54

.field static final TRANSACTION_getSimIndicatorState:I = 0x65

.field static final TRANSACTION_getSimOperator:I = 0x52

.field static final TRANSACTION_getSimOperatorName:I = 0x53

.field static final TRANSACTION_getSimSerialNumber:I = 0x56

.field static final TRANSACTION_getSimState:I = 0x51

.field static final TRANSACTION_getSmsDefaultSim:I = 0x67

.field static final TRANSACTION_getSubscriberInfo:I = 0x55

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x59

.field static final TRANSACTION_getVoiceMailNumber:I = 0x58

.field static final TRANSACTION_getVoiceMessageCount:I = 0x28

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x5c

.field static final TRANSACTION_getVoiceNetworkType:I = 0x2b

.field static final TRANSACTION_handlePinMmi:I = 0x12

.field static final TRANSACTION_hasIccCard:I = 0x2c

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1d

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleGemini:I = 0x41

.field static final TRANSACTION_isNetworkRoamingGemini:I = 0x73

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookGemini:I = 0x3f

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingGemini:I = 0x40

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isVTIdle:I = 0x5e

.field static final TRANSACTION_isVoiceIdle:I = 0x30

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x27

.field static final TRANSACTION_registerForSimModeChange:I = 0x68

.field static final TRANSACTION_setCellInfoListRate:I = 0x2f

.field static final TRANSACTION_setDefaultPhone:I = 0x4f

.field static final TRANSACTION_setGprsTransferType:I = 0x4d

.field static final TRANSACTION_setRadio:I = 0x14

.field static final TRANSACTION_setRadioOff:I = 0x36

.field static final TRANSACTION_setRadioPower:I = 0x15

.field static final TRANSACTION_setRoamingIndicatorNeddedProperty:I = 0x6a

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenGemini:I = 0x3a

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_showCallScreenWithDialpadGemini:I = 0x3b

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerGemini:I = 0x3e

.field static final TRANSACTION_simAkaAuth:I = 0x33

.field static final TRANSACTION_simAuth:I = 0x31

.field static final TRANSACTION_simAuthGemini:I = 0x48

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x34

.field static final TRANSACTION_simGbaAuthNAFMode:I = 0x35

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinGemini:I = 0x44

.field static final TRANSACTION_supplyPinReportResult:I = 0x10

.field static final TRANSACTION_supplyPinReportResultEx:I = 0x46

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukGemini:I = 0x45

.field static final TRANSACTION_supplyPukReportResult:I = 0x11

.field static final TRANSACTION_supplyPukReportResultEx:I = 0x47

.field static final TRANSACTION_toggleRadioOnOff:I = 0x13

.field static final TRANSACTION_uSimAuth:I = 0x32

.field static final TRANSACTION_uSimAuthGemini:I = 0x49

.field static final TRANSACTION_unregisterForSimModeChange:I = 0x69

.field static final TRANSACTION_updateServiceLocation:I = 0x16

.field static final TRANSACTION_updateServiceLocationGemini:I = 0x4a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 1239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 50
    :sswitch_0
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v4

    .line 77
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v0, v8

    .line 86
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v4

    .line 87
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_2
    move v0, v7

    .line 85
    goto :goto_1

    .line 93
    :sswitch_5
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v4

    .line 95
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v4, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    :sswitch_7
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    :sswitch_8
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v4

    .line 117
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v4, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v4

    .line 125
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v4, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v4

    .line 133
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v4

    .line 141
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v4

    .line 149
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v4, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    :sswitch_e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v4

    .line 166
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v4, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 178
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_10
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v4

    .line 188
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[I
    :sswitch_11
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    .line 200
    .restart local v4    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[I
    :sswitch_12
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v4

    .line 210
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v4, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    :sswitch_14
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v0, v8

    .line 226
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v4

    .line 227
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v4, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_d
    move v0, v7

    .line 225
    goto :goto_2

    .line 233
    :sswitch_15
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v0, v8

    .line 236
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v4

    .line 237
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v4, :cond_e

    move v7, v8

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_f
    move v0, v7

    .line 235
    goto :goto_3

    .line 243
    :sswitch_16
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    :sswitch_17
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    :sswitch_18
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 264
    :sswitch_19
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v4

    .line 268
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v4

    .line 278
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v4

    .line 286
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v4, :cond_10

    move v7, v8

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 292
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v4

    .line 294
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v4, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v4

    .line 302
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v4, :cond_12

    move v7, v8

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 308
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v4

    .line 310
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v4, :cond_13

    .line 312
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 316
    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 322
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_1f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 326
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 332
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_20
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v4

    .line 334
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 340
    .end local v4    # "_result":I
    :sswitch_21
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v4

    .line 342
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v4    # "_result":I
    :sswitch_22
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v4

    .line 350
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 356
    .end local v4    # "_result":I
    :sswitch_23
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v4

    .line 358
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 364
    .end local v4    # "_result":I
    :sswitch_24
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v4

    .line 366
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 372
    .end local v4    # "_result":I
    :sswitch_25
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v4

    .line 374
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 380
    .end local v4    # "_result":I
    :sswitch_26
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v4

    .line 390
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v4, :cond_14

    move v7, v8

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 396
    .end local v4    # "_result":Z
    :sswitch_28
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v4

    .line 398
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 404
    .end local v4    # "_result":I
    :sswitch_29
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v4

    .line 406
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 412
    .end local v4    # "_result":I
    :sswitch_2a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v4

    .line 414
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 420
    .end local v4    # "_result":I
    :sswitch_2b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v4

    .line 422
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 428
    .end local v4    # "_result":I
    :sswitch_2c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v4

    .line 430
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v4, :cond_15

    move v7, v8

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 436
    .end local v4    # "_result":Z
    :sswitch_2d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v4

    .line 438
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 444
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v5

    .line 446
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 452
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_2f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 461
    .end local v0    # "_arg0":I
    :sswitch_30
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceIdle()Z

    move-result v4

    .line 463
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v4, :cond_16

    move v7, v8

    :cond_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 469
    .end local v4    # "_result":Z
    :sswitch_31
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 485
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simAkaAuth(ILjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    .line 501
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_34
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 516
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simGbaAuthBootStrapMode(ILjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    .line 517
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_35
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 531
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 532
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simGbaAuthNAFMode(ILjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    .line 533
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 539
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_36
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOff()Z

    move-result v4

    .line 541
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v4, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 547
    .end local v4    # "_result":Z
    :sswitch_37
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreciseCallState()I

    move-result v4

    .line 549
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 555
    .end local v4    # "_result":I
    :sswitch_38
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialGemini(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 566
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_39
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->callGemini(Ljava/lang/String;I)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 577
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3a
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 580
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenGemini(I)Z

    move-result v4

    .line 581
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v4, :cond_18

    move v7, v8

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 587
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3b
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a

    move v0, v8

    .line 591
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 592
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpadGemini(ZI)Z

    move-result v4

    .line 593
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v4, :cond_19

    move v7, v8

    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_1a
    move v0, v7

    .line 589
    goto :goto_4

    .line 599
    :sswitch_3c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 602
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallGemini(I)Z

    move-result v4

    .line 603
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v4, :cond_1b

    move v7, v8

    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 609
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 612
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallGemini(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 618
    .end local v0    # "_arg0":I
    :sswitch_3e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 621
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerGemini(I)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 627
    .end local v0    # "_arg0":I
    :sswitch_3f
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 630
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookGemini(I)Z

    move-result v4

    .line 631
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v4, :cond_1c

    move v7, v8

    :cond_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 637
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_40
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 640
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingGemini(I)Z

    move-result v4

    .line 641
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    if-eqz v4, :cond_1d

    move v7, v8

    :cond_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 647
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_41
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleGemini(I)Z

    move-result v4

    .line 651
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v4, :cond_1e

    move v7, v8

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_42
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 660
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotificationGemini(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 666
    .end local v0    # "_arg0":I
    :sswitch_43
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 669
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeGemini(I)I

    move-result v4

    .line 670
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 676
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_44
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v4

    .line 682
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v4, :cond_1f

    move v7, v8

    :cond_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 688
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_45
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 695
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 696
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    if-eqz v4, :cond_20

    move v7, v8

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 702
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 707
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultEx(Ljava/lang/String;I)[I

    move-result-object v4

    .line 708
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 714
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":[I
    :sswitch_47
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 718
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 721
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultEx(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v4

    .line 722
    .restart local v4    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 728
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":[I
    :sswitch_48
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 747
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 748
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 757
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationGemini(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 763
    .end local v0    # "_arg0":I
    :sswitch_4b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 766
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesGemini(I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 772
    .end local v0    # "_arg0":I
    :sswitch_4c
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 775
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesGemini(I)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 781
    .end local v0    # "_arg0":I
    :sswitch_4d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferType(I)V

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 790
    .end local v0    # "_arg0":I
    :sswitch_4e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 794
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_21

    .line 795
    sget-object v7, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 800
    .local v1, "_arg1":Landroid/os/Message;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileRevisionAndImei(ILandroid/os/Message;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 798
    .end local v1    # "_arg1":Landroid/os/Message;
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Message;
    goto :goto_5

    .line 806
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Message;
    :sswitch_4f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 809
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultPhone(I)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 815
    .end local v0    # "_arg0":I
    :sswitch_50
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 818
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeGemini(I)I

    move-result v4

    .line 819
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 825
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_51
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimState(I)I

    move-result v4

    .line 829
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 835
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_52
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 838
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 839
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v4

    .line 849
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 855
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 858
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v4

    .line 859
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_55
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    .line 869
    .local v4, "_result":Lcom/android/internal/telephony/IPhoneSubInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v4, :cond_22

    invoke-interface {v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_22
    const/4 v7, 0x0

    goto :goto_6

    .line 875
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/android/internal/telephony/IPhoneSubInfo;
    :sswitch_56
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 878
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 885
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 888
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v4

    .line 889
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 895
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 898
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 899
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 908
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v4

    .line 909
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 915
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 920
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v4

    .line 921
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 927
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_5b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 931
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 932
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v4

    .line 933
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 939
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_5c
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 942
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountGemini(I)I

    move-result v4

    .line 943
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 949
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_5d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 953
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialUpCsd(ILjava/lang/String;)I

    move-result v4

    .line 955
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 961
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_5e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVTIdle()Z

    move-result v4

    .line 963
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    if-eqz v4, :cond_23

    move v7, v8

    :cond_23
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 969
    .end local v4    # "_result":Z
    :sswitch_5f
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 973
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 974
    .local v1, "_arg1":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 975
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    if-eqz v1, :cond_24

    .line 978
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    invoke-virtual {v1, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 982
    :cond_24
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 988
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_60
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapDisconnectSIM()I

    move-result v4

    .line 990
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 996
    .end local v4    # "_result":I
    :sswitch_61
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "_arg1":Ljava/lang/String;
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1003
    .local v2, "_arg2":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 1004
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    if-eqz v2, :cond_25

    .line 1007
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    invoke-virtual {v2, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1011
    :cond_25
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1017
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_62
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1021
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1022
    .local v1, "_arg1":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 1023
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    if-eqz v1, :cond_26

    .line 1026
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    invoke-virtual {v1, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1030
    :cond_26
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1036
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_63
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1040
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1041
    .restart local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 1042
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    if-eqz v1, :cond_27

    .line 1045
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    invoke-virtual {v1, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1049
    :cond_27
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1055
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_64
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOffSIM()I

    move-result v4

    .line 1057
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1063
    .end local v4    # "_result":I
    :sswitch_65
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorState()I

    move-result v4

    .line 1065
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1071
    .end local v4    # "_result":I
    :sswitch_66
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v4

    .line 1073
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    if-eqz v4, :cond_28

    .line 1075
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1079
    :cond_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1085
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_67
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsDefaultSim()I

    move-result v4

    .line 1087
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1093
    .end local v4    # "_result":I
    :sswitch_68
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1097
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1098
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1104
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_69
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1107
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSimModeChange(Landroid/os/IBinder;)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1113
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_6a
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_29

    move v0, v8

    .line 1116
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingIndicatorNeddedProperty(Z)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_29
    move v0, v7

    .line 1115
    goto :goto_7

    .line 1122
    :sswitch_6b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMissedCallCount()I

    move-result v4

    .line 1124
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1130
    .end local v4    # "_result":I
    :sswitch_6c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1134
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1135
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower(II)Z

    move-result v4

    .line 1136
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    if-eqz v4, :cond_2a

    move v7, v8

    :cond_2a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1142
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_6d
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1146
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1148
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1149
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower_234G(III)Z

    move-result v4

    .line 1150
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    if-eqz v4, :cond_2b

    move v7, v8

    :cond_2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1156
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_6e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1160
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1162
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1163
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPowerByBand(III)Z

    move-result v4

    .line 1164
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    if-eqz v4, :cond_2c

    move v7, v8

    :cond_2c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1170
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_6f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1173
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v4

    .line 1174
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1180
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1185
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1192
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_71
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1195
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 1196
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1202
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_72
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1205
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 1206
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1212
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_73
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1215
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNetworkRoamingGemini(I)Z

    move-result v4

    .line 1216
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    if-eqz v4, :cond_2d

    move v7, v8

    :cond_2d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1222
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_74
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1225
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 1226
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1232
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_75
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v4

    .line 1234
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
