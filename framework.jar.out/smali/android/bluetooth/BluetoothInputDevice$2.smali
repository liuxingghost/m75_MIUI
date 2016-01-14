.class Landroid/bluetooth/BluetoothInputDevice$2;
.super Ljava/lang/Object;
.source "BluetoothInputDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 465
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$000(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 466
    :try_start_0
    const-string v0, "BluetoothInputDevice"

    const-string v2, "Proxy object connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;

    move-result-object v2

    # setter for: Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 469
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 472
    :cond_0
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 475
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$000(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 476
    :try_start_0
    const-string v0, "BluetoothInputDevice"

    const-string v2, "Proxy object disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v2, 0x0

    # setter for: Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 478
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 481
    :cond_0
    monitor-exit v1

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
