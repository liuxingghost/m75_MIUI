.class Landroid/media/MiniThumbFile$MiniThumbDataFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiniThumbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniThumbDataFile"
.end annotation


# instance fields
.field private mActiveCount:I

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

.field private mPath:Ljava/lang/String;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Landroid/media/MiniThumbFile;


# direct methods
.method public constructor <init>(Landroid/media/MiniThumbFile;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 8
    .param p2, "miniThumbFile"    # Ljava/io/RandomAccessFile;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iput-object p1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 351
    iput-object p3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mPath:Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->load()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->reset()V

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 361
    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x80000

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create MiniThumbDataFile with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 362
    :catch_0
    move-exception v6

    .line 363
    .local v6, "ex1":Ljava/nio/channels/NonWritableChannelException;
    const-string v0, "MiniThumbFile"

    const-string/jumbo v1, "map MiniThumbFile(READ_WRITE) with NonWritableChannelException, try READ_ONLY mode"

    invoke-static {v0, v1, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x80000

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/nio/channels/NonReadableChannelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 366
    :catch_1
    move-exception v7

    .line 367
    .local v7, "ex2":Ljava/nio/channels/NonReadableChannelException;
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "try map as READ_ONLY mode with NonReadableChannelException"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized load()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 375
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 376
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 377
    const-string v3, "MiniThumbFile"

    const-string v4, "cannot read version header"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :goto_0
    monitor-exit p0

    return v2

    .line 381
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 382
    const-string v3, "MiniThumbFile"

    const-string/jumbo v4, "miss MiniThumbDataFile version"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 386
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x4

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v3

    const-wide/32 v5, 0x20140218

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 387
    const-string v3, "MiniThumbFile"

    const-string/jumbo v4, "miss MiniThumbDataFile magic"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0xc

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v3

    iput v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    const/16 v4, 0x3fff

    if-lt v3, v4, :cond_3

    .line 392
    const-string v3, "MiniThumbFile"

    const-string v4, "active count big than limit, need reset"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_3
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v3

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v6, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v5, v6, v7, v8}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 397
    const-string v3, "MiniThumbFile"

    const-string v4, "invalid version check sum, version header may be destoried"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_4
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 402
    .local v0, "size":J
    const-wide/32 v3, 0x3200000

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 403
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiniThumbDataFile size is big than limit(current size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x400

    div-long v5, v0, v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    :cond_5
    const-string v2, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load MiniThumbDataFile with active count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private declared-synchronized reset()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset MiniThumbDataFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    .line 414
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 415
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 417
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 418
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 419
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/4 v2, 0x4

    const-wide/32 v3, 0x20140218

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 420
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0xc

    iget v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 421
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x10

    const-wide/32 v3, -0x3f113e2b

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 422
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x18

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v3, v4, v5, v6}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v3

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 423
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bufferToString([B)Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/4 v3, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, ", magic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x8

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, ", data checksum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x10

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 601
    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x1c

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close MiniThumbDataFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->syncAll()V

    .line 572
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 573
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 440
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v0, v1, v2}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0xc

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v0, v1, v2}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v0

    iput v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    .line 443
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :goto_0
    monitor-exit p0

    return v0

    .line 446
    :cond_0
    :try_start_1
    const-string v0, "MiniThumbFile"

    const-string v1, "invalid version header, reset MiniThumbDataFile"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->reset()V

    .line 448
    iget v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataFromThumbFile([BJLandroid/media/MiniThumbFile$ThumbResult;)[B
    .locals 19
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "result"    # Landroid/media/MiniThumbFile$ThumbResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getIndexHeader([BJ)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    .line 519
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not get index header for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    const/16 p1, 0x0

    .line 566
    .end local p1    # "data":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    .line 523
    .restart local p1    # "data":[B
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v16

    .line 524
    .local v16, "oldId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0x8

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v14

    .line 525
    .local v14, "magic":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0x10

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v9

    .line 526
    .local v9, "dataCheckSum":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v18

    .line 527
    .local v18, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0x1c

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v12

    .line 529
    .local v12, "length":I
    cmp-long v3, v16, p2

    if-eqz v3, :cond_2

    .line 530
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid store original id : store id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", given id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 533
    :cond_2
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v3, v12, :cond_3

    .line 534
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid store data length: store length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", given length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 538
    :cond_3
    const/4 v13, 0x0

    .line 540
    .local v13, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    move/from16 v0, v18

    int-to-long v4, v0

    const-wide/16 v6, 0x4000

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move/from16 v0, v18

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-lt v3, v12, :cond_6

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v3, v0, v4, v12}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v3

    cmp-long v3, v9, v3

    if-nez v3, :cond_5

    .line 546
    if-eqz p4, :cond_4

    .line 547
    const/4 v3, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/media/MiniThumbFile$ThumbResult;->setDetail(I)V

    .line 549
    :cond_4
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataFromThumbFile success with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->bufferToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    if-eqz v13, :cond_0

    .line 560
    :try_start_3
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 561
    :catch_0
    move-exception v11

    .line 562
    .local v11, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v3, "MiniThumbFile"

    const-string v4, "getDataFromThumbFile: can not release lock!"

    invoke-static {v3, v4, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 518
    .end local v9    # "dataCheckSum":J
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v12    # "length":I
    .end local v13    # "lock":Ljava/nio/channels/FileLock;
    .end local v14    # "magic":J
    .end local v16    # "oldId":J
    .end local v18    # "position":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 552
    .restart local v9    # "dataCheckSum":J
    .restart local v12    # "length":I
    .restart local v13    # "lock":Ljava/nio/channels/FileLock;
    .restart local v14    # "magic":J
    .restart local v16    # "oldId":J
    .restart local v18    # "position":I
    :cond_5
    if-eqz p4, :cond_6

    .line 553
    const/4 v3, 0x1

    :try_start_5
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/media/MiniThumbFile$ThumbResult;->setDetail(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 559
    :cond_6
    if-eqz v13, :cond_7

    .line 560
    :try_start_6
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 565
    :cond_7
    :goto_1
    :try_start_7
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataFromThumbFile fail with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->bufferToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 561
    :catch_1
    move-exception v11

    .line 562
    .restart local v11    # "ex":Ljava/io/IOException;
    const-string v3, "MiniThumbFile"

    const-string v4, "getDataFromThumbFile: can not release lock!"

    invoke-static {v3, v4, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 558
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 559
    if-eqz v13, :cond_8

    .line 560
    :try_start_8
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 563
    :cond_8
    :goto_2
    :try_start_9
    throw v3

    .line 561
    :catch_2
    move-exception v11

    .line 562
    .restart local v11    # "ex":Ljava/io/IOException;
    const-string v4, "MiniThumbFile"

    const-string v5, "getDataFromThumbFile: can not release lock!"

    invoke-static {v4, v5, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized getIndexHeader([BJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "header"    # [B
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    monitor-enter p0

    long-to-int v1, p2

    :try_start_0
    rem-int/lit16 v1, v1, 0x3fff

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v1, 0x20

    .line 459
    .local v0, "position":I
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 460
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 458
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMagic(J)J
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getIndexHeader([BJ)Ljava/nio/ByteBuffer;

    .line 465
    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v4, v5, v6}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    .line 466
    .local v2, "storedId":J
    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    const/16 v6, 0x8

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v4, v5, v6}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v0

    .line 467
    .local v0, "magic":J
    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 468
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMagic succuss with: id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", magic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v0    # "magic":J
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 471
    .restart local v0    # "magic":J
    :cond_0
    :try_start_1
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMagic fail for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with store id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 464
    .end local v0    # "magic":J
    .end local v2    # "storedId":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->syncIndex()V

    .line 590
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "sync MiniThumbDataFile failed"

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 581
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "sync MiniThumbDataFile index failed"

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized updateActiveCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getActiveCount()I

    move-result v0

    .line 428
    .local v0, "currentActionCount":I
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 429
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/4 v3, 0x4

    const-wide/32 v4, 0x20140218

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 430
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0xc

    add-int/lit8 v0, v0, 0x1

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v1, v2, v3, v0}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 431
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x10

    const-wide/32 v4, -0x3f113e2b

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 432
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x18

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v4, v5, v6, v7}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v4

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 433
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 434
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return v0

    .line 427
    .end local v0    # "currentActionCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateDataToThumbFile([BJJ)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    const/16 v1, 0x4000

    if-le v0, v1, :cond_1

    .line 478
    :cond_0
    const-string v0, "MiniThumbFile"

    const-string/jumbo v1, "updateDataToThumbFile with invalid data"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :goto_0
    monitor-exit p0

    return-void

    .line 483
    :cond_1
    const/4 v8, 0x0

    .line 484
    .local v8, "position":I
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v0}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getIndexHeader([BJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v0, v1, v2}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_3

    .line 486
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v0, v1, v2}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v8

    .line 492
    :goto_1
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, p2, p3}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 493
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x8

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, p4, p5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 494
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x10

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # invokes: Landroid/media/MiniThumbFile;->checkSum([B)J
    invoke-static {v3, p1}, Landroid/media/MiniThumbFile;->access$700(Landroid/media/MiniThumbFile;[B)J

    move-result-wide v3

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 495
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x18

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v0, v1, v2, v8}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 496
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x1c

    array-length v3, p1

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 497
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v0}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->updateIndexHeader([BJ)V

    .line 499
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 500
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 501
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    const/4 v7, 0x0

    .line 504
    .local v7, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    int-to-long v1, v8

    const-wide/16 v3, 0x4000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 505
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 508
    if-eqz v7, :cond_2

    .line 509
    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    :cond_2
    :goto_2
    :try_start_4
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataToThumbFile succuss with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->bufferToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 477
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "position":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 489
    .restart local v8    # "position":I
    :cond_3
    const/high16 v0, 0x80000

    :try_start_5
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->updateActiveCount()I

    move-result v1

    mul-int/lit16 v1, v1, 0x4000

    add-int v8, v0, v1

    goto/16 :goto_1

    .line 510
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v6

    .line 511
    .local v6, "ex":Ljava/io/IOException;
    const-string v0, "MiniThumbFile"

    const-string/jumbo v1, "updateDataToThumbFile: can not release lock!"

    invoke-static {v0, v1, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 507
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 508
    if-eqz v7, :cond_4

    .line 509
    :try_start_6
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 512
    :cond_4
    :goto_3
    :try_start_7
    throw v0

    .line 510
    :catch_1
    move-exception v6

    .line 511
    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "updateDataToThumbFile: can not release lock!"

    invoke-static {v1, v2, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized updateIndexHeader([BJ)V
    .locals 4
    .param p1, "header"    # [B
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    monitor-enter p0

    long-to-int v1, p2

    :try_start_0
    rem-int/lit16 v1, v1, 0x3fff

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v1, 0x20

    .line 453
    .local v0, "position":I
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 454
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 452
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
