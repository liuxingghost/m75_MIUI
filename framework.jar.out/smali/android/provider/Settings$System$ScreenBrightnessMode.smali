.class public Landroid/provider/Settings$System$ScreenBrightnessMode;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenBrightnessMode"
.end annotation


# instance fields
.field private mAALFunction:I

.field private mIsAutoOn:Z

.field private mIsEcoOn:Z

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(ZZIZ)V
    .locals 0
    .param p1, "isAutoOn"    # Z
    .param p2, "isEcoOn"    # Z
    .param p3, "aalFunction"    # I
    .param p4, "isEnabled"    # Z

    .prologue
    .line 1913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1914
    iput-boolean p1, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsAutoOn:Z

    .line 1915
    iput-boolean p2, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEcoOn:Z

    .line 1916
    iput p3, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mAALFunction:I

    .line 1917
    iput-boolean p4, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEnabled:Z

    .line 1918
    return-void
.end method


# virtual methods
.method public getAALFunction()I
    .locals 1

    .prologue
    .line 1932
    iget-boolean v0, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 1933
    const/4 v0, 0x0

    .line 1934
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mAALFunction:I

    goto :goto_0
.end method

.method public isAALFunctionEnabled(I)Z
    .locals 2
    .param p1, "funcBit"    # I

    .prologue
    const/4 v0, 0x0

    .line 1927
    iget-boolean v1, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEnabled:Z

    if-nez v1, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mAALFunction:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAutoOn()Z
    .locals 1

    .prologue
    .line 1920
    iget-boolean v0, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsAutoOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEcoOn()Z
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEcoOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overwriteEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1937
    iput-boolean p1, p0, Landroid/provider/Settings$System$ScreenBrightnessMode;->mIsEnabled:Z

    .line 1938
    return-void
.end method
