.class public final enum Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;
.super Ljava/lang/Enum;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchImsScenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

.field public static final enum SWITCH_IMS_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

.field public static final enum SWITCH_IMS_RADIO_ON_OFF:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

.field public static final enum SWITCH_IMS_RUNTIME:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    const-string v1, "SWITCH_IMS_RADIO_ON_OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->SWITCH_IMS_RADIO_ON_OFF:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    const-string v1, "SWITCH_IMS_RUNTIME"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->SWITCH_IMS_RUNTIME:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    const-string v1, "SWITCH_IMS_RADIO_NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->SWITCH_IMS_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->SWITCH_IMS_RADIO_ON_OFF:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->SWITCH_IMS_RUNTIME:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->SWITCH_IMS_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->$VALUES:[Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->$VALUES:[Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/ServiceStateTracker$SwitchImsScenario;

    return-object v0
.end method
