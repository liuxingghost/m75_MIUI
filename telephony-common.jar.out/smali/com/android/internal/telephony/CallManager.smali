.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$3;,
        Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CALL_WAITING2:I = 0xd0

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE2:I = 0xd3

.field private static final EVENT_CIPHER_INDICATION:I = 0x80

.field private static final EVENT_CIPHER_INDICATION2:I = 0xe4

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION:I = 0x7b

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION2:I = 0xdf

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISCONNECT2:I = 0xc8

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_DISPLAY_INFO2:I = 0xd1

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_ECM_TIMER_RESET2:I = 0xd7

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_INCOMING_RING2:I = 0xcc

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF2:I = 0xcf

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON2:I = 0xce

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_COMPLETE2:I = 0xd6

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_MMI_INITIATE2:I = 0xd5

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_NEW_RINGING_CONNECTION2:I = 0xca

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_POST_DIAL_CHARACTER2:I = 0xdb

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED2:I = 0xc9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x7f

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE2:I = 0xe3

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RESEND_INCALL_MUTE2:I = 0xd4

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_RINGBACK_TONE2:I = 0xcd

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SERVICE_STATE_CHANGED2:I = 0xda

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SIGNAL_INFO2:I = 0xd2

.field private static final EVENT_SPEECH_INFO:I = 0x78

.field private static final EVENT_SPEECH_INFO2:I = 0xdc

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUBSCRIPTION_INFO_READY2:I = 0xd8

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_SUPP_SERVICE_FAILED2:I = 0xd9

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION:I = 0x7c

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION2:I = 0xe0

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_UNKNOWN_CONNECTION2:I = 0xcb

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION:I = 0x7e

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION2:I = 0xe2

.field private static final EVENT_VOLTE_CONFERENCE_CALL_NOTIFICATION:I = 0x81

.field private static final EVENT_VOLTE_CONFERENCE_CALL_NOTIFICATION2:I = 0xe5

.field private static final EVENT_VT_REPLACE_DISCONNECT:I = 0x7d

.field private static final EVENT_VT_REPLACE_DISCONNECT2:I = 0xe1

.field private static final EVENT_VT_RING_INFO:I = 0x7a

.field private static final EVENT_VT_RING_INFO2:I = 0xde

.field private static final EVENT_VT_STATUS_INFO:I = 0x79

.field private static final EVENT_VT_STATUS_INFO2:I = 0xdd

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager;

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final MAXIMUM_SIM_COUNT:I = 0x4

.field private static final NOTIFICATION_ID_OFFSET:I = 0x64

.field private static final VDBG:Z = true

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field private bWaitingForHoldRequest:Z

.field private dtmfRequestIsStarted:Z

.field private espeech_info:[I

.field private hasSetVtPara:Z

.field private m3GSwitchLockForPhoneCall:I

.field private mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants2:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrants:Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mCurrentAudioMode:I

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mDualModemCall:I

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mEmptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants2:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mMmiErrorMessageIsReceived:Z

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants2:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mSimSwitchLockForPhoneCall:I

.field protected final mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVoLteConferenceCallRegistrants:Landroid/os/RegistrantList;

.field protected final mVoLteConferenceCallRegistrants2:Landroid/os/RegistrantList;

.field protected final mVoLteConferenceCallRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    new-instance v1, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 432
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 186
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 189
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 192
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 195
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 198
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 201
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 204
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 207
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 210
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 213
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 216
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 219
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 222
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 225
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 228
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    .line 231
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 234
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 237
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 240
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 243
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    .line 251
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 254
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    .line 257
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    .line 260
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 263
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 266
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 269
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants:Landroid/os/RegistrantList;

    .line 272
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    .line 275
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    .line 278
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 281
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    .line 284
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 287
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants2:Landroid/os/RegistrantList;

    .line 290
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 293
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    .line 296
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    .line 299
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    .line 302
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    .line 305
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    .line 308
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    .line 311
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    .line 314
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    .line 317
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    .line 320
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    .line 323
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    .line 326
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    .line 329
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    .line 332
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    .line 335
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    .line 338
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    .line 341
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    .line 344
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    .line 347
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 350
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 353
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 356
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants2:Landroid/os/RegistrantList;

    .line 359
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    .line 363
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 364
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 365
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 366
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 367
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 368
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 369
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 370
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 371
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 372
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 373
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 374
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 375
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 376
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 377
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 378
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 379
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 380
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 381
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 382
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 383
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 384
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 385
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 386
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 387
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 388
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 389
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 390
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 394
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    .line 397
    iput v4, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 406
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    .line 409
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 415
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 416
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 417
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 418
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 421
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 424
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z

    .line 2510
    new-instance v2, Lcom/android/internal/telephony/CallManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CallManager$1;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 441
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    .line 443
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 445
    const-string v2, "CallManager"

    const-string v3, "Initiate registrants array"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 448
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 459
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 460
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 462
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 464
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 465
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 467
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 468
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 469
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 470
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 471
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 472
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 473
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 474
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 475
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 476
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aput v4, v2, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 447
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 480
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->handle3GSimSwitchLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hangupAllCalls(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->mMmiErrorMessageIsReceived:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/CallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CallManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/CallManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return p1
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 17
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1516
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1517
    .local v13, "serviceState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    .line 1518
    .local v11, "hasRingingCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    .line 1519
    .local v9, "hasActiveCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    .line 1520
    .local v10, "hasHoldingCall":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->isInCallMmiCommands(Ljava/lang/String;)Z

    move-result v6

    .line 1522
    .local v6, "bIsInCallMmiCommands":Z
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    .line 1529
    .local v4, "allLinesTaken":Z
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v9, :cond_0

    .line 1530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1531
    .local v3, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1532
    .local v7, "dialPhone":Lcom/android/internal/telephony/Phone;
    if-ne v7, v3, :cond_8

    const/4 v6, 0x1

    .line 1540
    .end local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "dialPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 1541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-eq v14, v15, :cond_1

    .line 1542
    const/4 v6, 0x0

    .line 1546
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1549
    .local v8, "fgCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v5, 0x0

    .line 1551
    .local v5, "bECCExists":Z
    if-eqz v9, :cond_2

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1553
    .local v2, "activeCallAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v5, 0x1

    .line 1557
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v5, :cond_a

    const/4 v14, 0x3

    if-eq v13, v14, :cond_a

    if-eqz v11, :cond_3

    if-eqz v6, :cond_a

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_a

    if-eqz v6, :cond_a

    :cond_5
    const/4 v12, 0x1

    .line 1566
    .local v12, "result":Z
    :goto_3
    if-nez v12, :cond_6

    .line 1567
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "canDial serviceState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasRingingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasActiveCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasHoldingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " allLinesTaken="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fgCallState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bECCExists="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_6
    return v12

    .line 1522
    .end local v4    # "allLinesTaken":Z
    .end local v5    # "bECCExists":Z
    .end local v8    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    .end local v12    # "result":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1532
    .restart local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "allLinesTaken":Z
    .restart local v7    # "dialPhone":Lcom/android/internal/telephony/Phone;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1553
    .end local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "dialPhone":Lcom/android/internal/telephony/Phone;
    .restart local v2    # "activeCallAddress":Ljava/lang/String;
    .restart local v5    # "bECCExists":Z
    .restart local v8    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 1557
    .end local v2    # "activeCallAddress":Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private checkIfExistsFollowingAction()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5342
    const/4 v0, 0x0

    .line 5343
    .local v0, "result":Z
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5344
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveCallToBeHeld.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWaitingReasonForHold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 5349
    :cond_0
    const/4 v0, 0x1

    .line 5350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 5351
    sget-object v1, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$CallManager$WaitingReasonForHold:[I

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5361
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 5363
    :cond_1
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction end"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5364
    return v0

    .line 5353
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 5354
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0

    .line 5358
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0

    .line 5351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearEspeechInfo()Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 5266
    const/4 v4, 0x0

    .line 5267
    .local v4, "isCleared":Z
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 5270
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v5, v5, v3

    if-eqz v5, :cond_3

    .line 5274
    :cond_0
    if-ne v3, v8, :cond_1

    .line 5275
    const-string v5, "CallManager"

    const-string v6, "All espeech is 0"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5280
    :cond_2
    const/4 v4, 0x1

    .line 5281
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    .line 5282
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 5281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5269
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5285
    :cond_4
    const/4 v2, 0x0

    .line 5286
    .local v2, "curAudioMode":I
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5288
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 5289
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5290
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 5294
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_5
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] skip set audio mode to normal, current audio mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "curAudioMode":I
    :cond_6
    return v4
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 828
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2470
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2471
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2475
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2482
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2483
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 2487
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2339
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2340
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2341
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2344
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2353
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2347
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    move-object v2, v0

    goto :goto_0

    .line 2349
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2350
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 2353
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getNewAudioModeIfMDSwap(I)I
    .locals 7
    .param p1, "oldMode"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v6, 0x4

    const/4 v2, 0x2

    .line 3188
    move v0, p1

    .line 3197
    .local v0, "newMode":I
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getNewAudioModeIfMDSwap]PhoneFactory.getExternalModemSlot() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v6, :cond_0

    if-ne p1, v1, :cond_1

    .line 3222
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3223
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_3

    .line 3224
    if-ne p1, v2, :cond_2

    move v0, v1

    .line 3248
    :cond_1
    :goto_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getNewAudioModeIfMDSwap]oldMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    return v0

    :cond_2
    move v0, v2

    .line 3224
    goto :goto_0

    .line 3226
    :cond_3
    if-ne p1, v6, :cond_1

    .line 3227
    const/4 v0, 0x5

    goto :goto_0

    .line 3230
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 499
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 502
    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-object p0
.end method

.method private getRegistrantsArrayIndex(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 4025
    add-int/lit8 v0, p1, 0x0

    .line 4026
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4033
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handle3GSimSwitchLock()V
    .locals 3

    .prologue
    .line 5115
    const-string v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v0

    .line 5116
    .local v0, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 5151
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    return-void
.end method

.method private handleSpeechInfo(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5161
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 5162
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    const/4 v14, 0x0

    aget v5, v13, v14

    .line 5163
    .local v5, "infoType":I
    const/4 v11, 0x1

    .line 5164
    .local v11, "result":Z
    packed-switch v5, :pswitch_data_0

    .line 5231
    const/4 v11, 0x0

    .line 5234
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 5235
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5238
    return v11

    .line 5166
    .end local v4    # "index":I
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 5168
    .restart local v4    # "index":I
    const/4 v4, 0x0

    .line 5170
    if-nez v4, :cond_1

    const/4 v8, 0x1

    .line 5171
    .local v8, "oppositeIndex":I
    :goto_1
    if-nez v4, :cond_2

    const/4 v9, 0x4

    .line 5179
    .local v9, "oppositeMode":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x0

    aput v14, v13, v4

    .line 5180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v13, v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 5181
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0

    .line 5170
    .end local v8    # "oppositeIndex":I
    .end local v9    # "oppositeMode":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 5171
    .restart local v8    # "oppositeIndex":I
    :cond_2
    const/4 v9, 0x2

    goto :goto_2

    .line 5192
    .end local v4    # "index":I
    .end local v8    # "oppositeIndex":I
    :pswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v7, v13, 0x64

    .line 5194
    .local v7, "newDualModemCall":I
    const/4 v7, 0x0

    .line 5197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x1

    aput v14, v13, v7

    .line 5200
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v7, v13, :cond_3

    .line 5205
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    goto :goto_0

    .line 5210
    .end local v7    # "newDualModemCall":I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5211
    .local v3, "context":Landroid/content/Context;
    const-string v13, "audio"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 5212
    .local v2, "audioManager":Landroid/media/AudioManager;
    const/16 v13, 0xdc

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-ne v13, v14, :cond_4

    const/4 v6, 0x2

    .line 5213
    .local v6, "modem":I
    :goto_3
    const/4 v13, 0x2

    if-ne v5, v13, :cond_5

    const/4 v12, 0x1

    .line 5225
    .local v12, "sid":I
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetModem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "GenerateSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5226
    .local v10, "para":Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5227
    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "para = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5212
    .end local v6    # "modem":I
    .end local v10    # "para":Ljava/lang/String;
    .end local v12    # "sid":I
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 5213
    .restart local v6    # "modem":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 5164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hangupAllCalls(I)Z
    .locals 5
    .param p1, "msg_type"    # I

    .prologue
    .line 5315
    const/4 v1, 0x0

    .line 5316
    .local v1, "result":Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    .line 5317
    .local v0, "externalModemSlot":I
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hangupAllCalls]externalModemSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    return v1
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2504
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEspeechTurnedOff(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5248
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 5249
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    :goto_1
    return v2

    .end local v0    # "i":I
    :cond_0
    move v0, v2

    .line 5248
    goto :goto_0

    .restart local v0    # "i":I
    :cond_1
    move v2, v1

    .line 5249
    goto :goto_1
.end method

.method private isInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 5084
    const/4 v1, 0x0

    .line 5085
    .local v1, "result":Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5087
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 5108
    :cond_0
    :goto_0
    return v1

    .line 5092
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 5093
    const/4 v1, 0x1

    goto :goto_0

    .line 5099
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 5100
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5087
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "p1"    # Lcom/android/internal/telephony/Phone;
    .param p1, "p2"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 527
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStatePowerOff()Z
    .locals 6

    .prologue
    .line 5400
    const/4 v0, 0x1

    .line 5402
    .local v0, "bIsPowerOff":Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 5403
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 5404
    :goto_0
    if-nez v0, :cond_0

    .line 5409
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isServiceStatePowerOff]bIsPowerOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    return v0

    .line 5403
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDisconnectedForSipCall(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 5417
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5419
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 5420
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->hangupAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5437
    :cond_0
    :goto_0
    return-void

    .line 5422
    :catch_0
    move-exception v1

    .line 5423
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CallManager"

    const-string v3, "[notifyDisconnectedForSipCall]Failed to hang up all SIP calls!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyDisconnectedMessageToApp(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 5444
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 5445
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    const-string v5, "notifyDisconnectedMessageToApp - notifyDisconnectP"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    move-object v4, v0

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5448
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 5449
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CallManager"

    const-string v5, "[notifyDisconnectedMessageToApp]Failed to notify disconnect messsage!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5451
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private registerOnePhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, "result":Z
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 599
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BSPPackage]registerPhone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    const/4 v1, 0x1

    .line 610
    :cond_0
    return v1
.end method

.method private registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 984
    const/16 v0, 0x64

    .line 986
    .local v0, "eventDifference":I
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_3

    .line 987
    const/4 v1, 0x0

    .line 1002
    .local v1, "simId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x65

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1003
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x64

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1004
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x66

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1005
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x67

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1006
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x68

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1007
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x69

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1008
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1009
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1010
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1011
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1012
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x70

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1013
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x71

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1014
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x72

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1015
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x75

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1016
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x76

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1018
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x78

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1019
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x79

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1020
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1021
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1022
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1023
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1024
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1025
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1026
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit16 v3, v3, 0x80

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1027
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit16 v3, v3, 0x81

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1030
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1032
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x77

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1036
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1037
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1038
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x74

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1039
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1040
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x73

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1042
    :cond_2
    return-void

    .line 990
    .end local v1    # "simId":I
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    .restart local v1    # "simId":I
    goto/16 :goto_0
.end method

.method private setAudioMode(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x2

    const/4 v12, 0x1

    .line 2956
    const-string v9, "CallManager"

    const-string v10, "setAudioMode enter..."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2958
    .local v2, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2961
    .local v6, "isVTCall":Z
    if-nez v2, :cond_1

    .line 3183
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    const-string v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2963
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2964
    .local v3, "curAudioMode":I
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", current mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v9

    if-eq v3, v9, :cond_8

    .line 2970
    packed-switch p1, :pswitch_data_0

    .line 3052
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 3053
    .local v4, "fgIsAlive":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    .line 3056
    .local v1, "bgIsAlive":Z
    if-nez p1, :cond_5

    if-nez v4, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3060
    const-string v9, "CallManager"

    const-string v10, "Do not need to switch normal mode for held call"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2974
    .end local v1    # "bgIsAlive":Z
    .end local v4    # "fgIsAlive":Z
    :pswitch_0
    if-eqz v3, :cond_3

    .line 2975
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v9

    if-ne v9, v12, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2976
    const-string v9, "CallManager"

    const-string v10, "no fg/bg call but ring call is exist, allow to set ringtone mode"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    :cond_3
    const-string v9, "CallManager"

    const-string v10, "requestAudioFocus on STREAM_RING"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    invoke-virtual {v0, v8, v8}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 2978
    :cond_4
    const-string v9, "CallManager"

    const-string v10, "there is fg or bg call exist, we don\'t allow to set ringtone mode"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3020
    :pswitch_1
    const-string v9, "CallManager"

    const-string v10, "requestAudioFocus on STREAM_VOICE_CALL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    invoke-virtual {v0, v13, v8}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 3084
    .restart local v1    # "bgIsAlive":Z
    .restart local v4    # "fgIsAlive":Z
    :cond_5
    const-string v5, ""

    .line 3085
    .local v5, "headsetState":Ljava/lang/String;
    if-le p1, v12, :cond_9

    .line 3093
    .local v8, "value":I
    :goto_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/internal/telephony/CallManager$2;

    invoke-direct {v10, p0, v8}, Lcom/android/internal/telephony/CallManager$2;-><init>(Lcom/android/internal/telephony/CallManager;I)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3134
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v7

    .line 3136
    .local v7, "newMode":I
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set AudioManager mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    if-ne v12, p1, :cond_6

    .line 3140
    iget-boolean v9, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    if-eqz v9, :cond_6

    .line 3141
    const/4 v7, 0x2

    .line 3166
    :cond_6
    if-eq v3, v7, :cond_7

    .line 3167
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 3171
    :cond_7
    if-eq v12, v7, :cond_8

    .line 3173
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 3174
    iput-boolean v13, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 3178
    .end local v1    # "bgIsAlive":Z
    .end local v4    # "fgIsAlive":Z
    .end local v5    # "headsetState":Ljava/lang/String;
    .end local v7    # "newMode":I
    .end local v8    # "value":I
    :cond_8
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_0

    .line 3179
    const-string v9, "CallManager"

    const-string v10, "abandonAudioFocus"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_0

    .restart local v1    # "bgIsAlive":Z
    .restart local v4    # "fgIsAlive":Z
    .restart local v5    # "headsetState":Ljava/lang/String;
    :cond_9
    move v8, p1

    .line 3085
    goto :goto_2

    .line 2970
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioModeDualModem(II)V
    .locals 3
    .param p1, "devId"    # I
    .param p2, "mode"    # I

    .prologue
    .line 3263
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3264
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 3286
    :goto_0
    return-void

    .line 3265
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3285
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0
.end method

.method private setAudioModeEarlierInAcceptCall()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 1191
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1192
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1193
    const-string v4, "CallManager"

    const-string v5, "Speedup Audio Path enhancement: Context is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1196
    const-string v5, "CallManager"

    const-string v6, "Speedup Audio Path enhancement"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1199
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 1200
    .local v2, "currMode":I
    if-eq v2, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v5, :cond_0

    .line 1203
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode Setting audio mode from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 1207
    .local v3, "newDualModemCall":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v3, v5, :cond_2

    .line 1208
    iput v3, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 1209
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set mDualModemCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-direct {p0, v5, v8}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    .line 1212
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    goto :goto_0

    .line 1206
    .end local v3    # "newDualModemCall":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setVTSpeechCall(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 5376
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v0

    .line 5377
    .local v1, "vtStatus":I
    if-nez v1, :cond_0

    move v0, v3

    .line 5380
    .local v0, "flag":I
    :cond_0
    if-ne v0, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v2, :cond_2

    .line 5393
    :cond_2
    return-void
.end method

.method private unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 1063
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 1073
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1075
    :cond_0
    const/16 v0, 0x77

    invoke-interface {p1, v3, v0, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1079
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1085
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1101
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1104
    .local v3, "ringingPhone":Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptCall("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1110
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v5

    .line 1111
    .local v2, "hasBgCall":Z
    :goto_0
    if-ne v0, v3, :cond_0

    move v4, v5

    .line 1114
    .local v4, "sameChannel":Z
    :cond_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1119
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 1121
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 1124
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1179
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "hasBgCall":Z
    .end local v4    # "sameChannel":Z
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-nez v5, :cond_2

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 1181
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1185
    :cond_2
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End acceptCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void

    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    move v2, v4

    .line 1110
    goto :goto_0

    .line 1125
    .restart local v1    # "audioManager":Landroid/media/AudioManager;
    .restart local v2    # "hasBgCall":Z
    .restart local v4    # "sameChannel":Z
    :cond_4
    if-nez v4, :cond_8

    if-nez v2, :cond_8

    .line 1127
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 1132
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1133
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1137
    :cond_6
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    .line 1139
    const-string v6, "CallManager"

    const-string v7, "Accept incoming call after the active call is held successfully."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iput-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1141
    sget-object v5, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1142
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1143
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 1147
    :cond_7
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_1

    .line 1150
    :cond_8
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 1153
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    goto/16 :goto_1
.end method

.method public acceptVtCallWithVoiceOnly(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5063
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptVtCallWithVoiceOnly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5070
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptVtCallWithVoiceOnly()V

    .line 5073
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End acceptVtCallWithVoiceOnly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    return-void
.end method

.method public addConferenceMember(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 4
    .param p1, "conferencePhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5461
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_2

    .line 5462
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCall;

    .line 5463
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5464
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .end local v0    # "call":Lcom/android/internal/telephony/gsm/GsmCall;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCall;

    .line 5466
    .restart local v0    # "call":Lcom/android/internal/telephony/gsm/GsmCall;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5467
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getConferenceCallId()I

    move-result v1

    .line 5468
    .local v1, "conferenceCallId":I
    const/4 v2, -0x1

    invoke-interface {p1, v1, p2, v2}, Lcom/android/internal/telephony/Phone;->addConferenceMember(ILjava/lang/String;I)V

    .line 5476
    .end local v0    # "call":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v1    # "conferenceCallId":I
    :goto_0
    return-void

    .line 5470
    .restart local v0    # "call":Lcom/android/internal/telephony/gsm/GsmCall;
    :cond_1
    const-string v2, "CallManager"

    const-string v3, "No conference call exists!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "No conference call exists!"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5474
    .end local v0    # "call":Lcom/android/internal/telephony/gsm/GsmCall;
    :cond_2
    const-string v2, "CallManager"

    const-string v3, "Failed to add member to VoLTE conference call!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v2, 0x0

    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1358
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1362
    :cond_0
    if-eqz p1, :cond_1

    .line 1363
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1367
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1368
    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    .line 1370
    :cond_2
    return v2
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1589
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1593
    :cond_0
    if-eqz p1, :cond_1

    .line 1594
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1597
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 1500
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1501
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1503
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1387
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1393
    .local v0, "fgPhone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 1394
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 1402
    :goto_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-void

    .line 1395
    .restart local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 1398
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 13
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    .line 1419
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1423
    .local v1, "basePhone":Lcom/android/internal/telephony/Phone;
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " dial("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const-string v9, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1429
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1434
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1435
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_4

    move v4, v7

    .line 1438
    .local v4, "hasBgCall":Z
    :goto_0
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasBgCall: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sameChannel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v0, v1, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    if-eq v0, v1, :cond_3

    .line 1443
    const/4 v5, 0x0

    .line 1444
    .local v5, "isUssdNumber":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_2

    .line 1445
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 1446
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1447
    .local v2, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UiccCardApplication]cardApp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    .line 1448
    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {p2, v7, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdNumber(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    .line 1457
    .end local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 1459
    if-eqz v4, :cond_6

    .line 1460
    const-string v7, "CallManager"

    const-string v8, "Hangup"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1472
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "hasBgCall":Z
    .end local v5    # "isUssdNumber":Z
    :cond_3
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1475
    .local v6, "result":Lcom/android/internal/telephony/Connection;
    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End dial("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const-string v7, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return-object v6

    .end local v6    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    move v4, v8

    .line 1435
    goto/16 :goto_0

    .line 1449
    .restart local v4    # "hasBgCall":Z
    .restart local v5    # "isUssdNumber":Z
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 1450
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .restart local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    move-object v7, v1

    .line 1451
    check-cast v7, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {p2, v7, v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v3

    .line 1452
    .local v3, "cdmaMmiCode":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-eqz v3, :cond_2

    .line 1453
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isUssdRequest()Z

    move-result v5

    goto :goto_1

    .line 1465
    .end local v2    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "cdmaMmiCode":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    :cond_6
    const-string v7, "CallManager"

    const-string v8, "Switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1493
    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialWithSipUri(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5486
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 5490
    .local v1, "basePhone":Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " dial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5496
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5500
    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5501
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "It is not SIP uri"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5504
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5505
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5506
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 5509
    .local v2, "hasBgCall":Z
    :goto_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v0, v1, :cond_4

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5512
    if-eq v0, v1, :cond_2

    .line 5513
    if-eqz v2, :cond_5

    .line 5514
    const-string v4, "CallManager"

    const-string v5, "Hangup"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 5524
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "hasBgCall":Z
    :cond_2
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 5527
    .local v3, "result":Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End dial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5528
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5531
    return-object v3

    .end local v3    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    move v2, v5

    .line 5506
    goto :goto_0

    .restart local v2    # "hasBgCall":Z
    :cond_4
    move v4, v5

    .line 5509
    goto :goto_1

    .line 5518
    :cond_5
    const-string v4, "CallManager"

    const-string v5, "Switch"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1614
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1623
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2327
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2328
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2329
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2333
    :cond_0
    :goto_0
    return-object v0

    .line 2329
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 2407
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2409
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2413
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2433
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2434
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2435
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2437
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2422
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2423
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2425
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    .line 2445
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2446
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2447
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2449
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2370
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2371
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2376
    :cond_0
    :goto_0
    return-object v0

    .line 2372
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2393
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2394
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2399
    :cond_0
    :goto_0
    return-object v0

    .line 2395
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    .line 1696
    :goto_0
    return v0

    .line 1693
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    .line 1696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1639
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCallCount()I
    .locals 6

    .prologue
    .line 2491
    const/4 v1, 0x0

    .line 2493
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2494
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2498
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRingingCallCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    return v1
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 568
    const/4 v2, 0x1

    .line 570
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 571
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 572
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    .line 574
    move v2, v3

    .line 589
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    .line 576
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 579
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 581
    :cond_3
    move v2, v3

    goto :goto_0

    .line 583
    :cond_4
    if-ne v3, v5, :cond_0

    .line 584
    if-ne v2, v6, :cond_0

    .line 585
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5

    .prologue
    .line 545
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 547
    .local v2, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 548
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 549
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 550
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 551
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 554
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4959
    const-string v3, "CallManager"

    const-string v4, " hangupAll() "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    const-string v3, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4964
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 4965
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_0

    .line 4971
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4972
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4973
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 4975
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    return-void
.end method

.method public hangupAllEx()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4982
    const/4 v1, 0x0

    .line 4985
    .local v1, "bAtLeastOneNotIdle":Z
    const-string v4, "CallManager"

    const-string v5, " hangupAllEx() "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4989
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 4990
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone.getState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 4992
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 4993
    const/4 v1, 0x1

    goto :goto_0

    .line 4999
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5000
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5001
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 5004
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_2
    return v1
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1321
    const/4 v1, 0x0

    .line 1322
    .local v1, "foregroundPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 1325
    .local v0, "backgroundPhone":Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1331
    if-eqz p1, :cond_0

    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1333
    if-ne v1, v0, :cond_1

    .line 1334
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1344
    :cond_0
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return-void

    .line 1337
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1338
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 2

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 2

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2126
    return-void
.end method

.method public registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3725
    return-void
.end method

.method public registerForCallWaitingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4516
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4517
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4518
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4520
    :cond_0
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2193
    return-void
.end method

.method public registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3794
    return-void
.end method

.method public registerForCdmaOtaStatusChangeEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4614
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4615
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4616
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4618
    :cond_0
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3392
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3393
    return-void
.end method

.method public registerForCipherIndication2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3988
    return-void
.end method

.method public registerForCipherIndicationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4903
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4904
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4905
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4907
    :cond_0
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3344
    return-void
.end method

.method public registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3932
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3933
    return-void
.end method

.method public registerForCrssSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4816
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4817
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4818
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4820
    :cond_0
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1848
    return-void
.end method

.method public registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3433
    return-void
.end method

.method public registerForDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4052
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4053
    .local v0, "index":I
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForDisconnectEx, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4055
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4057
    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2172
    return-void
.end method

.method public registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3771
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3772
    return-void
.end method

.method public registerForDisplayInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4583
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4584
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4585
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4587
    :cond_0
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2028
    return-void
.end method

.method public registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3621
    return-void
.end method

.method public registerForEcmTimerResetEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4362
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4363
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4364
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4366
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2106
    return-void
.end method

.method public registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3703
    return-void
.end method

.method public registerForInCallVoicePrivacyOffEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4486
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4487
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4488
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4490
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2086
    return-void
.end method

.method public registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3681
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3682
    return-void
.end method

.method public registerForInCallVoicePrivacyOnEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4456
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4457
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4458
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4460
    :cond_0
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1930
    return-void
.end method

.method public registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3518
    return-void
.end method

.method public registerForIncomingRingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4193
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4194
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4195
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4197
    :cond_0
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2010
    return-void
.end method

.method public registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3602
    return-void
.end method

.method public registerForMmiCompleteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4331
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4332
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4333
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4335
    :cond_0
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1990
    return-void
.end method

.method public registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3581
    return-void
.end method

.method public registerForMmiInitiateEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4296
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4297
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4298
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4300
    :cond_0
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1909
    return-void
.end method

.method public registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3496
    return-void
.end method

.method public registerForNewRingingConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4158
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4159
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4160
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4162
    :cond_0
    return-void
.end method

.method public registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 923
    return-void
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2255
    return-void
.end method

.method public registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3857
    return-void
.end method

.method public registerForPostDialCharacterEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4700
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4701
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4702
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4704
    :cond_0
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1869
    return-void
.end method

.method public registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3455
    return-void
.end method

.method public registerForPreciseCallStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4089
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4090
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4091
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4093
    :cond_0
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1968
    return-void
.end method

.method public registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3558
    return-void
.end method

.method public registerForResendIncallMuteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4259
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4260
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4261
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4263
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1952
    return-void
.end method

.method public registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3541
    return-void
.end method

.method public registerForRingbackToneEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4229
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4230
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4231
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4233
    :cond_0
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2045
    return-void
.end method

.method public registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3639
    return-void
.end method

.method public registerForServiceStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4393
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4394
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4395
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4397
    :cond_0
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2149
    return-void
.end method

.method public registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3748
    return-void
.end method

.method public registerForSignalInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4550
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4551
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4552
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4554
    :cond_0
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3296
    return-void
.end method

.method public registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3876
    return-void
.end method

.method public registerForSpeechInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4729
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4730
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4731
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4733
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2211
    return-void
.end method

.method public registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3812
    return-void
.end method

.method public registerForSubscriptionInfoReadyEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4643
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4644
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4645
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4647
    :cond_0
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2065
    return-void
.end method

.method public registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3660
    return-void
.end method

.method public registerForSuppServiceFailedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4424
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4425
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4426
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4428
    :cond_0
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3360
    return-void
.end method

.method public registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3951
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3952
    return-void
.end method

.method public registerForSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4845
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4846
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4847
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4849
    :cond_0
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1885
    return-void
.end method

.method public registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3471
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3472
    return-void
.end method

.method public registerForUnknownConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4120
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4121
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4122
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4124
    :cond_0
    return-void
.end method

.method public registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3410
    return-void
.end method

.method public registerForVoLteConferenceCallNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4005
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4006
    return-void
.end method

.method public registerForVoLteConferenceCallNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4932
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4933
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4934
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4936
    :cond_0
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3377
    return-void
.end method

.method public registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3970
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3971
    return-void
.end method

.method public registerForVtReplaceDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4874
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4875
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4876
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4878
    :cond_0
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3328
    return-void
.end method

.method public registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3914
    return-void
.end method

.method public registerForVtRingInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4787
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4788
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4789
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4791
    :cond_0
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3312
    return-void
.end method

.method public registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3894
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3895
    return-void
.end method

.method public registerForVtStatusInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "simId"    # I

    .prologue
    .line 4758
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4759
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4760
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4762
    :cond_0
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 639
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 640
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 659
    const/4 v1, 0x1

    .line 661
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1228
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1234
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1237
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1830
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1831
    const/4 v0, 0x1

    .line 1833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1729
    const/4 v0, 0x0

    .line 1732
    .local v0, "result":Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1738
    const/4 v0, 0x1

    .line 1742
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 1652
    const-string v0, "CallManager"

    const-string v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioMode()V
    .locals 4

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "mode":I
    sget-object v2, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 807
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 822
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    .line 824
    return-void

    .line 762
    :pswitch_0
    const/4 v0, 0x1

    .line 763
    goto :goto_0

    .line 765
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 766
    .local v1, "offhookPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 772
    :cond_1
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_2

    .line 774
    const/4 v0, 0x3

    goto :goto_0

    .line 777
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1704
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1714
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1667
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1676
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1758
    const/4 v0, 0x0

    .line 1761
    .local v0, "result":Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1766
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1767
    const/4 v0, 0x1

    .line 1776
    const-string v1, "CallManager"

    const-string v2, "dtmfRequestIsStarted = true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1782
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1795
    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    if-eqz v0, :cond_1

    .line 1802
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1804
    const-string v0, "CallManager"

    const-string v1, "dtmfRequestIsStarted = false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_1
    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1265
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1273
    :cond_0
    if-eqz p1, :cond_1

    .line 1274
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1278
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1280
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 1283
    const-string v2, "CallManager"

    const-string v3, "Switch held call to active one after the active call is held successfully."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1285
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1286
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1287
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 1291
    :cond_2
    if-eqz v0, :cond_3

    .line 1292
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1295
    :cond_3
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_4

    .line 1297
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 1307
    :cond_4
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void

    .line 1302
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2924
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v4, "CallManager {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2927
    .local v1, "call":Lcom/android/internal/telephony/Call;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2930
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 2939
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 2940
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPhone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2943
    const-string v4, "\n- Foreground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2944
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2945
    const-string v4, " Background: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2946
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2947
    const-string v4, " Ringing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2950
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v4, "\n}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2134
    return-void
.end method

.method public unregisterForCallWaiting2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3733
    return-void
.end method

.method public unregisterForCallWaitingEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4530
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4531
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4532
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4534
    :cond_0
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2201
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3802
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4628
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4629
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4630
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4632
    :cond_0
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3400
    return-void
.end method

.method public unregisterForCipherIndication2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3995
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3996
    return-void
.end method

.method public unregisterForCipherIndicationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4917
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4918
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4919
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4921
    :cond_0
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3352
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3942
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4830
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4831
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4832
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4834
    :cond_0
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1856
    return-void
.end method

.method public unregisterForDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3442
    return-void
.end method

.method public unregisterForDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4068
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4069
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4070
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4072
    :cond_0
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2182
    return-void
.end method

.method public unregisterForDisplayInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3782
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3783
    return-void
.end method

.method public unregisterForDisplayInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4598
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4599
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4600
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4602
    :cond_0
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2036
    return-void
.end method

.method public unregisterForEcmTimerReset2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3630
    return-void
.end method

.method public unregisterForEcmTimerResetEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4376
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4377
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4378
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4380
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2115
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3713
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4500
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4501
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4502
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4504
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2095
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3691
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3692
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4470
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4471
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4472
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4474
    :cond_0
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1939
    return-void
.end method

.method public unregisterForIncomingRing2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3528
    return-void
.end method

.method public unregisterForIncomingRingEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4208
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4209
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4210
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4212
    :cond_0
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2018
    return-void
.end method

.method public unregisterForMmiComplete2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3611
    return-void
.end method

.method public unregisterForMmiCompleteEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4346
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4347
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4348
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4350
    :cond_0
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1998
    return-void
.end method

.method public unregisterForMmiInitiate2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3590
    return-void
.end method

.method public unregisterForMmiInitiateEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4311
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4312
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4313
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4315
    :cond_0
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1918
    return-void
.end method

.method public unregisterForNewRingingConnection2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3506
    return-void
.end method

.method public unregisterForNewRingingConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4173
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4174
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4175
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4177
    :cond_0
    return-void
.end method

.method public unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 980
    return-void
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2259
    return-void
.end method

.method public unregisterForPostDialCharacter2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3866
    return-void
.end method

.method public unregisterForPostDialCharacterEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4714
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4715
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4716
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4718
    :cond_0
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1877
    return-void
.end method

.method public unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3464
    return-void
.end method

.method public unregisterForPreciseCallStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4104
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4105
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4106
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4108
    :cond_0
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1975
    return-void
.end method

.method public unregisterForResendIncallMute2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3566
    return-void
.end method

.method public unregisterForResendIncallMuteEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4273
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4274
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4275
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4277
    :cond_0
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1960
    return-void
.end method

.method public unregisterForRingbackTone2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3550
    return-void
.end method

.method public unregisterForRingbackToneEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4243
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4244
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4245
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4247
    :cond_0
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2053
    return-void
.end method

.method public unregisterForServiceStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3648
    return-void
.end method

.method public unregisterForServiceStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4408
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4409
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4410
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4412
    :cond_0
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2159
    return-void
.end method

.method public unregisterForSignalInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3758
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3759
    return-void
.end method

.method public unregisterForSignalInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4565
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4566
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4567
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4569
    :cond_0
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3304
    return-void
.end method

.method public unregisterForSpeechInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3884
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3885
    return-void
.end method

.method public unregisterForSpeechInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4743
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4744
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4745
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4747
    :cond_0
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2219
    return-void
.end method

.method public unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3821
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4657
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4658
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4659
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4661
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2075
    return-void
.end method

.method public unregisterForSuppServiceFailed2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3670
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3671
    return-void
.end method

.method public unregisterForSuppServiceFailedEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4440
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4441
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4442
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4444
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3368
    return-void
.end method

.method public unregisterForSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3960
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3961
    return-void
.end method

.method public unregisterForSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4859
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4860
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4861
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4863
    :cond_0
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1892
    return-void
.end method

.method public unregisterForUnknownConnection2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3480
    return-void
.end method

.method public unregisterForUnknownConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4134
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4135
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4136
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4138
    :cond_0
    return-void
.end method

.method public unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3418
    return-void
.end method

.method public unregisterForVoLteConferenceCallNotification2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4013
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4014
    return-void
.end method

.method public unregisterForVoLteConferenceCallNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4946
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4947
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4948
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVoLteConferenceCallRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4950
    :cond_0
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3385
    return-void
.end method

.method public unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3979
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3980
    return-void
.end method

.method public unregisterForVtReplaceDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4888
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4889
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4890
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4892
    :cond_0
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3336
    return-void
.end method

.method public unregisterForVtRingInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3922
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3923
    return-void
.end method

.method public unregisterForVtRingInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4801
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4802
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4803
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4805
    :cond_0
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3320
    return-void
.end method

.method public unregisterForVtStatusInfo2(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3904
    return-void
.end method

.method public unregisterForVtStatusInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    .line 4772
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4773
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4774
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4776
    :cond_0
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 670
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 672
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 682
    const-string v1, "CallManager"

    const-string v2, "notifyDisconnectedForSipCall"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->notifyDisconnectedForSipCall(Lcom/android/internal/telephony/Phone;)V

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 687
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5015
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 5019
    .local v1, "basePhone":Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " vtDial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5025
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5027
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    instance-of v6, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v6, :cond_4

    .line 5028
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 5031
    .local v2, "hasBgCall":Z
    :goto_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    if-eqz v2, :cond_3

    .line 5035
    const-string v4, "CallManager"

    const-string v5, "Hangup"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 5046
    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "hasBgCall":Z
    :cond_0
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 5049
    .local v3, "result":Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End vtDial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    return-object v3

    .end local v3    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    move v2, v5

    .line 5028
    goto :goto_0

    .restart local v2    # "hasBgCall":Z
    :cond_2
    move v4, v5

    .line 5031
    goto :goto_1

    .line 5038
    :cond_3
    const-string v4, "CallManager"

    const-string v5, "Switch"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .line 5042
    .end local v2    # "hasBgCall":Z
    :cond_4
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_2
.end method
