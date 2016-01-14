.class public Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnableDedicateBearerParam"
.end annotation


# instance fields
.field public apnType:Ljava/lang/String;

.field public ddc:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

.field public interfaceId:I

.field public qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

.field public signalingFlag:Z

.field public tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)V
    .locals 0
    .param p2, "dedicateDc"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "flag"    # Z
    .param p5, "qos"    # Lcom/android/internal/telephony/dataconnection/QosStatus;
    .param p6, "tft"    # Lcom/android/internal/telephony/dataconnection/TftStatus;

    .prologue
    .line 4800
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4801
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .line 4802
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->apnType:Ljava/lang/String;

    .line 4803
    iput-boolean p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->signalingFlag:Z

    .line 4804
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 4805
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 4806
    return-void
.end method
