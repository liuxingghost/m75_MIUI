.class public Lcom/android/internal/telephony/ImsXuiManager;
.super Ljava/lang/Object;
.source "ImsXuiManager.java"


# static fields
.field static mInstance:Lcom/android/internal/telephony/ImsXuiManager;


# instance fields
.field public mXui:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ImsXuiManager;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/internal/telephony/ImsXuiManager;->mInstance:Lcom/android/internal/telephony/ImsXuiManager;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/internal/telephony/ImsXuiManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsXuiManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ImsXuiManager;->mInstance:Lcom/android/internal/telephony/ImsXuiManager;

    .line 11
    sget-object v0, Lcom/android/internal/telephony/ImsXuiManager;->mInstance:Lcom/android/internal/telephony/ImsXuiManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsXuiManager;->loadXui()V

    .line 13
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ImsXuiManager;->mInstance:Lcom/android/internal/telephony/ImsXuiManager;

    return-object v0
.end method

.method private loadXui()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method


# virtual methods
.method public clearStoredXui()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ImsXuiManager;->mXui:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public getXui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/ImsXuiManager;->mXui:Ljava/lang/String;

    return-object v0
.end method

.method public setXui(Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/ImsXuiManager;->mXui:Ljava/lang/String;

    .line 34
    return-void
.end method
