.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public duration:I

.field public mode:I

.field public nesting:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public rejectTime:J

.field public time:J

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "_uid"    # I
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 115
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 116
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 117
    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 118
    return-void
.end method