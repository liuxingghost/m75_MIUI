.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DedicateConnectionParam"
.end annotation


# instance fields
.field public callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

.field public onCompletedMsg:Landroid/os/Message;

.field public param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

.field public reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 0
    .param p2, "enableDedicateBearerParam"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    .line 641
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 642
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;Landroid/os/Message;)V
    .locals 0
    .param p2, "dedicateDataCallState"    # Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    .line 651
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 652
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p2, "rea"    # Ljava/lang/String;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 646
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    .line 647
    return-void
.end method
