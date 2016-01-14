.class public Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;
.super Ljava/lang/Object;
.source "DedicateDataCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    }
.end annotation


# instance fields
.field public active:I

.field public bearerId:I

.field public cid:I

.field public defaultCid:I

.field public failCause:I

.field public interfaceId:I

.field public qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

.field public signalingFlag:I

.field public tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(IILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 1
    .param p1, "activeStatus"    # I
    .param p2, "cause"    # I
    .param p3, "properties"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 25
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->interfaceId:I

    .line 26
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->defaultCid:I

    .line 27
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    .line 28
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->active:I

    .line 29
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->signalingFlag:I

    .line 30
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->bearerId:I

    .line 31
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    .line 32
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 33
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 34
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->interfaceId:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->defaultCid:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->active:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->signalingFlag:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->bearerId:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/QosStatus;->readFrom(Landroid/os/Parcel;)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 56
    new-instance v0, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/TftStatus;->readFrom(Landroid/os/Parcel;)V

    .line 59
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[interfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->interfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->defaultCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->active:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->signalingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->bearerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", QOS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TFT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->interfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->defaultCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->active:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->signalingFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->bearerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/QosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/TftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 75
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 69
    goto :goto_0

    :cond_3
    move v1, v2

    .line 72
    goto :goto_1
.end method
