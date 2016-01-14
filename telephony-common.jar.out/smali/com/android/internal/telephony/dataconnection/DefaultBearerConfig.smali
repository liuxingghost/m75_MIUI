.class public Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;
.super Ljava/lang/Object;
.source "DefaultBearerConfig.java"


# instance fields
.field public mEmergency_ind:I

.field public mIsValid:I

.field public mPcscf_discovery_flag:I

.field public mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

.field public mSignaling_flag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->reset()V

    .line 17
    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/dataconnection/QosStatus;III)V
    .locals 0
    .param p1, "isValid"    # I
    .param p2, "qos"    # Lcom/android/internal/telephony/dataconnection/QosStatus;
    .param p3, "emergency_ind"    # I
    .param p4, "pcscf_discovery_flag"    # I
    .param p5, "signaling_flag"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    .line 20
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 21
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    .line 22
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    .line 23
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

    .line 24
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)V
    .locals 1
    .param p1, "defaultBearerConfig"    # Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    .prologue
    .line 27
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    .line 28
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 29
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    .line 30
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    .line 31
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

    .line 32
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/QosStatus;->readFrom(Landroid/os/Parcel;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

    .line 41
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/QosStatus;->reset()V

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergency_ind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pcscf_discovery_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signaling_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

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
    .line 44
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mIsValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mQos:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/QosStatus;->writeTo(Landroid/os/Parcel;)V

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mEmergency_ind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mPcscf_discovery_flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->mSignaling_flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
