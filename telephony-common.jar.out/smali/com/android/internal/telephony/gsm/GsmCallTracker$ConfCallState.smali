.class public final enum Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;
.super Ljava/lang/Enum;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

.field public static final enum CONF_CONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

.field public static final enum CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

.field public static final enum CONF_DISCONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

.field public static final enum CONF_HELD:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

.field public static final enum CONF_NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    const-string v1, "CONF_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 222
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    const-string v1, "CONF_CREATING"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 223
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    const-string v1, "CONF_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 224
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    const-string v1, "CONF_HELD"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_HELD:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 225
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    const-string v1, "CONF_DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_DISCONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    .line 220
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CREATING:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_CONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_HELD:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->CONF_DISCONNECTED:Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

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
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    const-class v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/GsmCallTracker$ConfCallState;

    return-object v0
.end method
