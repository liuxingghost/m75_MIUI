.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v14, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 155
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 157
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 158
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 159
    :try_start_0
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_1

    move v11, v10

    :cond_1
    iput-boolean v11, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 161
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v11, v10, :cond_2

    .line 163
    :try_start_1
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v5, v10, v11

    .line 164
    .local v5, "index":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v11

    iget-object v13, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 165
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[insertRaw save one pdu in index "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v5    # "index":I
    :goto_1
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_0

    .line 181
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 183
    .local v3, "e":Lcom/android/internal/telephony/CommandException;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot update SMS "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v10, v11, :cond_0

    .line 187
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 166
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/ClassCastException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v10

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 168
    :catch_1
    move-exception v4

    .line 169
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v11, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v11

    iget-object v13, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "-1,"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 193
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 195
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    monitor-enter v11

    .line 197
    :try_start_5
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_4

    .line 198
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 200
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 209
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 211
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v10

    .line 202
    :cond_4
    :try_start_6
    const-string v10, "SMS"

    const/4 v12, 0x3

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 203
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "Cannot load Sms records"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 205
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 206
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 218
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 219
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 220
    :try_start_7
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_6

    :goto_3
    iput-boolean v10, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 221
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 222
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v10

    :cond_6
    move v10, v11

    .line 220
    goto :goto_3

    .line 226
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 228
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 229
    :try_start_8
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_8

    .line 230
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 232
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v10

    if-nez v10, :cond_7

    .line 233
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v12}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>()V

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/mediatek/common/telephony/IccSmsStorageStatus;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 236
    :cond_7
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 238
    .local v9, "tmpStatus":Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v10

    iget v12, v9, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    iput v12, v10, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    .line 239
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v10

    iget v12, v9, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    iput v12, v10, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    .line 244
    .end local v9    # "tmpStatus":Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 245
    monitor-exit v11

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v10

    .line 242
    :cond_8
    :try_start_9
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 248
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 249
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 250
    :try_start_a
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_9

    move v11, v10

    :cond_9
    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v13, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 251
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v11

    if-ne v11, v10, :cond_a

    .line 253
    :try_start_b
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v5, v10, v11

    .line 254
    .restart local v5    # "index":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v11

    iget-object v13, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 255
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[insertText save one pdu in index "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 266
    .end local v5    # "index":I
    :goto_5
    :try_start_c
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit v12

    goto/16 :goto_0

    :catchall_4
    move-exception v10

    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v10

    .line 256
    :catch_2
    move-exception v3

    .line 257
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_5

    .line 258
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v4

    .line 259
    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 262
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_a
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v11, "[insertText fail to insert sms into ICC"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 263
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v11

    iget-object v13, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "-1,"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_5

    .line 270
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 271
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 272
    :try_start_e
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v10, :cond_b

    .line 274
    :try_start_f
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Landroid/telephony/SmsParameters;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 287
    :goto_6
    :try_start_10
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v11

    goto/16 :goto_0

    :catchall_5
    move-exception v10

    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v10

    .line 275
    :catch_4
    move-exception v3

    .line 276
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    :try_start_11
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_6

    .line 278
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_5
    move-exception v4

    .line 279
    .restart local v4    # "ex":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 283
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "[EFsmsp fail to get sms params"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 284
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_6

    .line 291
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 292
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 293
    :try_start_12
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_c

    .line 294
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 300
    :goto_7
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit v11

    goto/16 :goto_0

    :catchall_6
    move-exception v10

    monitor-exit v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v10

    .line 296
    :cond_c
    :try_start_13
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "[EFsmsp fail to set sms params"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 297
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_7

    .line 304
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 305
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 306
    :try_start_14
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-nez v10, :cond_e

    .line 309
    :try_start_15
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v8, v0

    .line 310
    .local v8, "rawData":[B
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    if-nez v10, :cond_d

    .line 311
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "sms raw data status is FREE"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 312
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 325
    .end local v8    # "rawData":[B
    :goto_8
    :try_start_16
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 326
    monitor-exit v11

    goto/16 :goto_0

    :catchall_7
    move-exception v10

    monitor-exit v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v10

    .line 314
    .restart local v8    # "rawData":[B
    :cond_d
    :try_start_17
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v12, v8}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_8

    .line 316
    .end local v8    # "rawData":[B
    :catch_6
    move-exception v3

    .line 317
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    :try_start_18
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "fail to get sms raw data ClassCastException"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 319
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_8

    .line 322
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_e
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "fail to get sms raw data rild"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 323
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_8

    .line 329
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 330
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 331
    :try_start_19
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_f

    .line 332
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 335
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_10

    .line 336
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 354
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_f
    :goto_9
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "queryCbActivation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v13, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 355
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 356
    monitor-exit v11

    goto/16 :goto_0

    :catchall_8
    move-exception v10

    monitor-exit v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    throw v10

    .line 338
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_10
    const/4 v10, 0x0

    :try_start_1a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 339
    .local v2, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cbConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v10

    if-ne v10, v14, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v10

    if-ne v10, v14, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v10

    if-ne v10, v14, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v10

    if-ne v10, v14, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v10

    if-nez v10, :cond_11

    .line 347
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_9

    .line 349
    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto :goto_9

    .line 359
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 360
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 361
    :try_start_1b
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_12

    .line 362
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 364
    .local v7, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_13

    .line 365
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$902(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 366
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 368
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 369
    const/4 v5, 0x0

    .line 370
    .restart local v5    # "index":I
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "config size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 372
    const/4 v5, 0x0

    :goto_a
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v5, v10, :cond_13

    .line 373
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSmsCBConfig["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Channel id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Language: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Selected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 383
    .end local v5    # "index":I
    .end local v7    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_12
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v12, "Cannot Get CB configs"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 385
    :cond_13
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 386
    monitor-exit v11

    goto/16 :goto_0

    :catchall_9
    move-exception v10

    monitor-exit v11
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v10

    .line 389
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 390
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 391
    :try_start_1c
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_14

    :goto_b
    iput-boolean v10, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 392
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 393
    monitor-exit v12

    goto/16 :goto_0

    :catchall_a
    move-exception v10

    monitor-exit v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    throw v10

    :cond_14
    move v10, v11

    .line 391
    goto :goto_b

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_a
    .end sparse-switch
.end method
