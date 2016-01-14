.class public Lcom/android/internal/telephony/dataconnection/QosStatus;
.super Ljava/lang/Object;
.source "QosStatus.java"


# instance fields
.field public dlGbr:I

.field public dlMbr:I

.field public qci:I

.field public ulGbr:I

.field public ulMbr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/dataconnection/QosStatus;)V
    .locals 1
    .param p1, "qos"    # Lcom/android/internal/telephony/dataconnection/QosStatus;

    .prologue
    .line 20
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    .line 21
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    .line 22
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    .line 23
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    .line 24
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    .line 25
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    .line 33
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    .line 48
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[qci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlGbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ulGbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlMbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ulMbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
