.class public Lcom/android/internal/telephony/dataconnection/TftParameter;
.super Ljava/lang/Object;
.source "TftParameter.java"


# instance fields
.field public authTokenFlowIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/TftAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field public linkedPacketFilterIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TftParameter;->reset()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 25
    .local v2, "linkedPfNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 26
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 29
    .local v0, "authtokenFlowIdNumber":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 30
    new-instance v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;-><init>()V

    .line 31
    .local v3, "tftAuthToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->readFrom(Landroid/os/Parcel;)V

    .line 32
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35
    .end local v3    # "tftAuthToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 36
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 37
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "[LinkedPacketFilterIdList["

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 53
    .local v2, "linkedPacketFilterId":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 54
    .end local v2    # "linkedPacketFilterId":Ljava/lang/Integer;
    :cond_0
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v4, ", AuthTokenFlowIdList["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    .line 57
    .local v3, "tftAuthToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 58
    .end local v3    # "tftAuthToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    :cond_1
    const-string v4, "]]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 40
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 42
    .local v2, "pfId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 44
    .end local v2    # "pfId":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    .line 46
    .local v0, "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->writeTo(Landroid/os/Parcel;)V

    goto :goto_1

    .line 47
    .end local v0    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    :cond_1
    return-void
.end method
