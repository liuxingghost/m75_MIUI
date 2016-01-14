.class public Lcom/android/internal/telephony/ImsAdapter$VaEvent;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VaEvent"
.end annotation


# static fields
.field public static final MAX_DATA_LENGTH:I = 0xa000


# instance fields
.field private data:[B

.field private data_len:I

.field private event_max_data_len:I

.field private read_offset:I

.field private request_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "rid"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const v0, 0xa000

    iput v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 40
    iput p1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->request_id:I

    .line 41
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "rid"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const v0, 0xa000

    iput v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->request_id:I

    .line 48
    iput p2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 49
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 52
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "ret":I
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 170
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 171
    monitor-exit p0

    .line 172
    return v0

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 176
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    .line 180
    :cond_0
    new-array v1, p1, [B

    .line 182
    .local v1, "ret":[B
    monitor-enter p0

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 185
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    return-object v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    return v0
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "ret":I
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 151
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 152
    monitor-exit p0

    .line 153
    return v0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequestID()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->request_id:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "ret":I
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 160
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 161
    monitor-exit p0

    .line 162
    return v0

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 192
    new-array v0, p1, [B

    .line 194
    .local v0, "buf":[B
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->read_offset:I

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 85
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 90
    iget v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 91
    monitor-exit p0

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 121
    array-length v0, p1

    .line 123
    .local v0, "len":I
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    if-le v0, v2, :cond_0

    .line 124
    const/4 v1, -0x1

    .line 132
    :goto_0
    return v1

    .line 127
    :cond_0
    monitor-enter p0

    .line 128
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 130
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putInt(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 55
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 56
    const/4 v1, -0x1

    .line 65
    :goto_0
    return v1

    .line 59
    :cond_0
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 62
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    monitor-exit p0

    .line 65
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putShort(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 69
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 70
    const/4 v1, -0x1

    .line 80
    :goto_0
    return v1

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 76
    iget v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    monitor-exit p0

    .line 80
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 97
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    iget v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->event_max_data_len:I

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_0

    .line 98
    const/4 v3, -0x1

    .line 117
    :goto_0
    return v3

    .line 101
    :cond_0
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 103
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 104
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v6, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-static {v2, v4, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 115
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v2    # "s":[B
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 107
    .restart local v2    # "s":[B
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, p2, v4

    .line 108
    .local v1, "remain":I
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v6, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data:[B

    iget v5, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 112
    iget v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->data_len:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
