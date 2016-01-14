.class Lcom/android/server/AppWidgetServiceImpl;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;,
        Lcom/android/server/AppWidgetServiceImpl$Host;,
        Lcom/android/server/AppWidgetServiceImpl$Provider;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DBG:Z = false

.field private static final DEFAULT_LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field private static final FILTER_PERMISSION:Ljava/lang/String; = "android.permission.ADVANCED_WIDGET_API"

.field private static final KEYGUARD_HOST_ID:I = 0x4b455947

.field private static final KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"


# instance fields
.field hostName:Ljava/lang/String;

.field final mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mDeletedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mHasFeature:Z

.field final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field final mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mMaxWidgetBitmapMemory:I

.field mNextAppWidgetId:I

.field final mPackagesWithBindWidgetPermission:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSMBState:Z

.field mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;

.field private final mSaveStateRunnable:Ljava/lang/Runnable;

.field mStateLoaded:Z

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "saveStateHandler"    # Landroid/os/Handler;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSMBState:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->hostName:Ljava/lang/String;

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    .line 1002
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    .line 216
    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 217
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 218
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 219
    iput p2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    .line 220
    iput-object p3, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppWidgetServiceImpl;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    return-void
.end method

.method private bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 592
    sget-boolean v6, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidgetIdImpl appwid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " provider="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 594
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 596
    .local v1, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 597
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v6, :cond_1

    .line 598
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    :goto_0
    return-void

    .line 600
    :cond_1
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 601
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 603
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v0, :cond_2

    .line 604
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad appWidgetId"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 647
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 649
    :catchall_1
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 606
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    :try_start_4
    iget-object v6, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_3

    .line 607
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appWidgetId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already bound to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 610
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 611
    .local v5, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_4

    .line 612
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not a appwidget provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 614
    :cond_4
    iget-boolean v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v6, :cond_5

    .line 615
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 619
    :cond_5
    iput-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 620
    if-nez p3, :cond_6

    .line 621
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .end local p3    # "options":Landroid/os/Bundle;
    .local v4, "options":Landroid/os/Bundle;
    move-object p3, v4

    .line 623
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local p3    # "options":Landroid/os/Bundle;
    :cond_6
    iput-object p3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    .line 626
    const-string v6, "appWidgetCategory"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 627
    const-string v6, "appWidgetCategory"

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    :cond_7
    iget-object v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 633
    .local v3, "instancesSize":I
    if-ne v3, v9, :cond_8

    .line 635
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 642
    :cond_8
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v8, 0x0

    aput p1, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 645
    invoke-static {v5}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 646
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 647
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 649
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private callerHasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 678
    .local v0, "callingUid":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 686
    :goto_0
    return v2

    .line 681
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 684
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 685
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 686
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1230
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    .line 1232
    .end local p1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    return-object p1
.end method

.method private cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1240
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1242
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1223
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 1225
    .end local p1    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    return-object p1
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 4
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 883
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 884
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 886
    .local v2, "key":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 887
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 892
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 896
    .end local v0    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "key":Landroid/content/Intent$FilterComparison;
    :cond_1
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 836
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 856
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v4, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 859
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 861
    .local v1, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    return-void

    .line 864
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 380
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 382
    const-string v0, "    hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 384
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 385
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 386
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "    provider="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_1

    .line 391
    const-string v0, "    host.callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 393
    :cond_1
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 394
    const-string v0, "    views="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 396
    :cond_2
    return-void
.end method

.method private dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/AppWidgetServiceImpl$Host;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 370
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 372
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 373
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 374
    const-string v0, "    callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 375
    const-string v0, "    instances.size="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 376
    const-string v0, " zombie="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 377
    return-void
.end method

.method private dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "index"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 348
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 349
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 352
    const-string v1, "    min=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 353
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 354
    const-string v1, ")   minResize=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 355
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 356
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 358
    const-string v1, " resizeMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 360
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 361
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 363
    const-string v1, " initialLayout=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    const-string v1, " uid="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 366
    const-string v1, " zombie="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 367
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .locals 1

    .prologue
    .line 445
    const-string v0, "ensureStateLoadedLocked"

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 446
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    if-nez v0, :cond_0

    .line 447
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadAppWidgetListLocked()V

    .line 451
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadStateLocked()V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    goto :goto_0
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Host;)[I
    .locals 4
    .param p0, "h"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 1495
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1496
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    .line 1497
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1498
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    return-object v0
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I
    .locals 4
    .param p0, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 1473
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1474
    .local v2, "instancesSize":I
    new-array v0, v2, [I

    .line 1475
    .local v0, "appWidgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1476
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    :cond_0
    return-object v0
.end method

.method private getProcessNameById(I)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I

    .prologue
    .line 2174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2175
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2177
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 2181
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2182
    .local v6, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2183
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    new-array v0, v7, [C

    .line 2185
    .local v0, "buf":[C
    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 2186
    const/4 v7, 0x0

    aget-char v7, v0, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2189
    :catch_0
    move-exception v2

    .line 2190
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2192
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2178
    .end local v0    # "buf":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 2179
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2188
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method static getSettingsFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1984
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "fc"    # Landroid/content/Intent$FilterComparison;

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 877
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 878
    return-void

    .line 874
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 875
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isLocalBinder()Z
    .locals 2

    .prologue
    .line 1218
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .locals 19
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1517
    const/4 v9, 0x0

    .line 1519
    .local v9, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1520
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v11, 0x0

    .line 1522
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.appwidget.provider"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 1524
    if-nez v11, :cond_1

    .line 1525
    const-string v16, "AppWidgetServiceImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    const/4 v10, 0x0

    .line 1609
    if-eqz v11, :cond_0

    .line 1610
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1612
    :cond_0
    :goto_0
    return-object v10

    .line 1530
    :cond_1
    :try_start_1
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1534
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    .line 1538
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1539
    .local v8, "nodeName":Ljava/lang/String;
    const-string v16, "appwidget-provider"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1540
    const-string v16, "AppWidgetServiceImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    const/4 v10, 0x0

    .line 1609
    if-eqz v11, :cond_0

    .line 1610
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 1545
    :cond_4
    :try_start_2
    new-instance v10, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {v10}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1546
    .end local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .local v10, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :try_start_3
    new-instance v7, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v7}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v7, v10, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1547
    .local v7, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    iput-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1548
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v12

    .line 1553
    .local v12, "res":Landroid/content/res/Resources;
    sget-object v16, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1559
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1561
    .local v15, "value":Landroid/util/TypedValue;
    if-eqz v15, :cond_7

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1562
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1563
    if-eqz v15, :cond_8

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1564
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1566
    if-eqz v15, :cond_9

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 1567
    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1569
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_4
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 1570
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 1572
    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 1574
    const/16 v16, 0xa

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 1576
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1578
    .local v5, "className":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 1579
    new-instance v16, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 1581
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1583
    const/16 v16, 0x5

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 1585
    const/16 v16, 0x6

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 1587
    const/16 v16, 0x7

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 1590
    const/16 v16, 0xb

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 1594
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1596
    sget-object v16, Lcom/mediatek/internal/R$styleable;->MTKAppWidgetProviderInfo:[I

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1598
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->hasUsedCustomerView:Z

    .line 1599
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1600
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1609
    if-eqz v11, :cond_6

    .line 1610
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    move-object v9, v10

    .line 1612
    .end local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto/16 :goto_0

    .line 1561
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "className":Ljava/lang/String;
    .end local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1563
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1566
    :cond_9
    :try_start_4
    iget v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v16, v0

    goto/16 :goto_3

    .line 1569
    :cond_a
    iget v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v16, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 1602
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "type":I
    .end local v15    # "value":Landroid/util/TypedValue;
    .restart local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catch_0
    move-exception v6

    .line 1606
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v16, "AppWidgetServiceImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1607
    const/4 v10, 0x0

    .line 1609
    if-eqz v11, :cond_0

    .line 1610
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 1609
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_6
    if-eqz v11, :cond_b

    .line 1610
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v16

    .line 1609
    .end local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v14    # "type":I
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto :goto_6

    .line 1602
    .end local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catch_1
    move-exception v6

    move-object v9, v10

    .end local v10    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .restart local v9    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    goto :goto_5
.end method

.method private performUpgrade(I)V
    .locals 7
    .param p1, "fromVersion"    # I

    .prologue
    const/4 v6, 0x1

    .line 1959
    if-ge p1, v6, :cond_0

    .line 1960
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading widget database from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_0
    move v2, p1

    .line 1967
    .local v2, "version":I
    if-nez v2, :cond_3

    .line 1968
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1969
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1970
    .local v0, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    const-string v3, "android"

    iget-object v4, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    const v4, 0x4b455947    # 1.2933447E7f

    if-ne v3, v4, :cond_1

    .line 1972
    const-string v3, "com.android.keyguard"

    iput-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    .line 1968
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    .end local v0    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_2
    const/4 v2, 0x1

    .line 1978
    .end local v1    # "i":I
    :cond_3
    if-eq v2, v6, :cond_4

    .line 1979
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to upgrade widget database"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1981
    :cond_4
    return-void
.end method

.method private saveStateAsync()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    return-void
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 5
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 814
    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 816
    .local v0, "appWidgetId":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 818
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 820
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 821
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 823
    .local v1, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 824
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 825
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 831
    .end local v1    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 832
    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 1382
    const-string v2, "addProviderLocked"

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1383
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return v1

    .line 1386
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1389
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1391
    .local v0, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ri.activityInfo.packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ri.activityInfo.name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1393
    if-eqz v0, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    const/4 v1, 0x1

    goto :goto_0
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)Z
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2017
    const-string v8, "addProvidersForPackageLocked"

    invoke-direct {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 2018
    const/4 v5, 0x0

    .line 2019
    .local v5, "providersAdded":Z
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2020
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2023
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v8, v4, v9, v10, v11}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2030
    .local v2, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    .line 2031
    .local v0, "N":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 2032
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2033
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2034
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    .line 2031
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2026
    .end local v0    # "N":I
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 2043
    :goto_3
    return v0

    .line 2030
    .restart local v2    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 2037
    .restart local v0    # "N":I
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "i":I
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2038
    invoke-virtual {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2039
    const/4 v5, 0x1

    goto :goto_2

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    move v0, v5

    .line 2043
    goto :goto_3
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceSystemOrCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "callingUid":I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 459
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 460
    const/4 v0, -0x1

    monitor-exit v5

    .line 477
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 463
    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 465
    .local v0, "appWidgetId":I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 467
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    .line 468
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 469
    iput-object v2, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 471
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 475
    sget-boolean v4, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allocating AppWidgetId for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " host="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 477
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 478
    .end local v0    # "appWidgetId":I
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidgetId appWidgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 657
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-boolean v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 672
    :goto_0
    return v1

    .line 665
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_APPWIDGET"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 672
    const/4 v1, 0x1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->callerHasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v14

    .line 726
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v13, :cond_0

    .line 727
    monitor-exit v14

    .line 781
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 730
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v7

    .line 731
    .local v7, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v7, :cond_1

    .line 732
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad appWidgetId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 780
    .end local v7    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 734
    .restart local v7    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 736
    .local v2, "componentName":Landroid/content/ComponentName;
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v2, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 738
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 739
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 742
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v5

    .line 743
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 749
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v3, 0x0

    .line 750
    .local v3, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    new-instance v6, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 751
    .local v6, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 752
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 754
    .restart local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v3}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v4, v3

    .line 759
    .end local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .local v4, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    iget-object v13, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v13, v13, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 760
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-eq v12, v13, :cond_4

    .line 761
    const-string v13, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AppWidgetServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 768
    .local v10, "token":J
    :try_start_4
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v3, v8, v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 769
    .end local v4    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v3, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 773
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 780
    monitor-exit v14

    goto/16 :goto_0

    .line 773
    .end local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v4    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .restart local v3    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v13

    goto :goto_1
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z
    .locals 3
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    .line 1286
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {v1, p2}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return v0

    .line 1290
    :cond_1
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-eq v1, p2, :cond_0

    .line 1294
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 578
    sget-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelBroadcasts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 583
    .local v0, "token":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 589
    .end local v0    # "token":J
    :cond_1
    return-void

    .line 585
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method computeMaximumWidgetBitmapMemory()V
    .locals 5

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 228
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 229
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 230
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 233
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x6

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 234
    return-void
.end method

.method public deleteAllHosts()V
    .locals 7

    .prologue
    .line 511
    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 512
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 513
    monitor-exit v6

    .line 530
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 517
    .local v1, "callingUid":I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 518
    .local v0, "N":I
    const/4 v2, 0x0

    .line 519
    .local v2, "changed":Z
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 520
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 521
    .local v3, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    invoke-virtual {v3, v1}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 523
    const/4 v2, 0x1

    .line 519
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 526
    .end local v3    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_2
    if-eqz v2, :cond_3

    .line 527
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 529
    :cond_3
    monitor-exit v6

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "callingUid":I
    .end local v2    # "changed":Z
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public deleteAppWidgetId(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 482
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 483
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 484
    monitor-exit v2

    .line 493
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 488
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 490
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 492
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .locals 6
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 549
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 550
    .local v0, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 553
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 556
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_0

    .line 557
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-boolean v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_0

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 562
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 564
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 566
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 569
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 571
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 575
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteHost(I)V
    .locals 4
    .param p1, "hostId"    # I

    .prologue
    .line 496
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 497
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 498
    monitor-exit v3

    .line 508
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 502
    .local v0, "callingUid":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 503
    .local v1, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 505
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 507
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "callingUid":I
    .end local v1    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 533
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 534
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 535
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 536
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    .line 534
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 538
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 543
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 399
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 409
    .local v0, "N":I
    const-string v2, "Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 415
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v2, "AppWidgetIds:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 422
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const-string v2, "Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 425
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 429
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    const-string v2, "Deleted Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 432
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 435
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 436
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    const-string v2, "Deleted Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 439
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 441
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1640
    .local v0, "callingUid":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1645
    .local v2, "packageUid":I
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1646
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1641
    .end local v2    # "packageUid":I
    :catch_0
    move-exception v1

    .line 1642
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1649
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageUid":I
    :cond_0
    return v0
.end method

.method enforceSystemOrCallingUid(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1630
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 1633
    .end local v0    # "callingUid":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "callingUid":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1482
    const-string v1, "getAppWidgetIds"

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1483
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1484
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    .line 1486
    .local v0, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-ne v1, v3, :cond_0

    .line 1487
    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    monitor-exit v2

    .line 1489
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_0

    .line 1491
    .end local v0    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetIdsForHost(I)[I
    .locals 4
    .param p1, "hostId"    # I

    .prologue
    .line 1504
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1505
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1507
    .local v0, "callingUid":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    .line 1508
    .local v1, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v1, :cond_0

    .line 1509
    invoke-static {v1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Host;)[I

    move-result-object v2

    monitor-exit v3

    .line 1511
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v3

    goto :goto_0

    .line 1513
    .end local v0    # "callingUid":I
    .end local v1    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 900
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 901
    monitor-exit v2

    .line 908
    :goto_0
    return-object v1

    .line 903
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 905
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v3, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_1

    .line 906
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 909
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 908
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1041
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1042
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2

    .line 1049
    :goto_0
    return-object v1

    .line 1044
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 1046
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1047
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1051
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1049
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    :try_start_1
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v1, 0x0

    .line 913
    sget-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetViews id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 914
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 915
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_1

    .line 916
    monitor-exit v2

    .line 924
    :goto_0
    return-object v1

    .line 918
    :cond_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 919
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 920
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-eqz v0, :cond_2

    .line 921
    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 925
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 923
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "   couldn\'t find appwidgetid"

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 924
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 11
    .param p1, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 930
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->getProcessNameById(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->hostName:Ljava/lang/String;

    .line 931
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInstalledProviders hostName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->hostName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ADVANCED_WIDGET_API"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 933
    .local v4, "permission":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    const/4 v1, 0x1

    .line 934
    .local v1, "enableFiltering":Z
    :cond_0
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->hostName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->hostName:Ljava/lang/String;

    const-string v8, "com.android.settings"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 935
    const/4 v1, 0x1

    .line 937
    :cond_1
    const-string v7, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "permission of the launcher: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " enableFiltering = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 940
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v7, :cond_2

    .line 941
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v8

    .line 961
    :goto_0
    return-object v5

    .line 943
    :cond_2
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 944
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 945
    .local v0, "N":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 947
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 949
    .local v3, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.permission.ADVANCED_WIDGET_API"

    iget-object v10, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 951
    .local v6, "widgetPermission":I
    const-string v7, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widget package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Permission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-eqz v1, :cond_4

    if-nez v6, :cond_4

    .line 946
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 956
    :cond_4
    const-string v7, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p.zombie = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-boolean v7, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v7, :cond_3

    iget-object v7, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v7, p1

    if-eqz v7, :cond_3

    .line 958
    iget-object v7, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 962
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v6    # "widgetPermission":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 961
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_5
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1616
    const/4 v0, 0x0

    .line 1618
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1622
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1623
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1625
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 1619
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 700
    :goto_0
    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 699
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 700
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method loadAppWidgetListLocked()V
    .locals 9

    .prologue
    .line 1363
    const-string v5, "loadAppWidgetListLocked"

    invoke-direct {p0, v5}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1364
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v5, v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 1370
    .local v1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1371
    .local v0, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1372
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1373
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 1371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1370
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1375
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mInstalledProviders size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v0    # "N":I
    .end local v1    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    :goto_2
    return-void

    .line 1376
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method loadStateLocked()V
    .locals 6

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 1673
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1674
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1676
    if-eqz v2, :cond_0

    .line 1678
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1686
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 1679
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1683
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .locals 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1303
    const-string v4, "lookupAppWidgetIdLocked"

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1305
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1306
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1307
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1308
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1312
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :goto_1
    return-object v3

    .line 1306
    .restart local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1312
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "hostId"    # I

    .prologue
    .line 1329
    const-string v3, "lookupHostLocked"

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1330
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1331
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1332
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1333
    .local v1, "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    invoke-virtual {v1, p1}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v3, p2, :cond_0

    .line 1337
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :goto_1
    return-object v1

    .line 1331
    .restart local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1337
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I

    .prologue
    .line 1341
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1342
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1343
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1344
    .local v1, "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    iget v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v4, p3, :cond_0

    iget-object v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1353
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :goto_1
    return-object v1

    .line 1342
    .restart local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1348
    .end local v1    # "h":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1
    new-instance v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    .line 1349
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    .line 1350
    iput p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    .line 1351
    iput p3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    .line 1352
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 1353
    goto :goto_1
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1316
    const-string v3, "lookupProviderLocked"

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1317
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1318
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1319
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1320
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1325
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :goto_1
    return-object v2

    .line 1318
    .restart local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1324
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    const-string v3, "lookupProviderLocked return null"

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1325
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 5
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .prologue
    .line 1081
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    if-eqz p1, :cond_0

    .line 1087
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 1090
    array-length v0, p1

    .line 1092
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1093
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1094
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1095
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    .line 1096
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1098
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V
    .locals 12
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "viewId"    # I

    .prologue
    .line 1160
    if-eqz p1, :cond_2

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_2

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v9, :cond_2

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v9, :cond_2

    .line 1162
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v9, :cond_0

    .line 1165
    :try_start_0
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v9, v10, p2, v11}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :cond_0
    :goto_0
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v9, :cond_2

    .line 1176
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1177
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$FilterComparison;

    .line 1178
    .local v4, "key":Landroid/content/Intent$FilterComparison;
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1179
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1181
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    .line 1202
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1204
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1206
    .local v6, "token":J
    :try_start_1
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v3, v0, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1209
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1166
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/content/Intent$FilterComparison;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6    # "token":J
    .end local v8    # "userId":I
    :catch_0
    move-exception v1

    .line 1169
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_0

    .line 1209
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "conn":Landroid/content/ServiceConnection;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "key":Landroid/content/Intent$FilterComparison;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .restart local v6    # "token":J
    .restart local v8    # "userId":I
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1215
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "key":Landroid/content/Intent$FilterComparison;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6    # "token":J
    .end local v8    # "userId":I
    :cond_2
    return-void
.end method

.method notifyHostsForProvidersChangedLocked()V
    .locals 6

    .prologue
    .line 2196
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2197
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 2198
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 2200
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :try_start_0
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v4, :cond_0

    .line 2201
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v4, v5}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2203
    :catch_0
    move-exception v1

    .line 2207
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_1

    .line 2210
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_1
    return-void
.end method

.method onBroadcastReceived(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    .line 277
    sget-boolean v11, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onBroadcast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, "added":Z
    const/4 v3, 0x0

    .line 281
    .local v3, "changed":Z
    const/4 v9, 0x0

    .line 282
    .local v9, "providersModified":Z
    const/4 v7, 0x0

    .line 283
    .local v7, "pkgList":[Ljava/lang/String;
    const-string v11, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 284
    const-string v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 285
    const/4 v1, 0x1

    .line 302
    :goto_0
    if-eqz v7, :cond_1

    array-length v11, v7

    if-nez v11, :cond_4

    .line 345
    :cond_1
    :goto_1
    return-void

    .line 286
    :cond_2
    const-string v11, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 287
    const-string v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 288
    const/4 v1, 0x0

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 291
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 294
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 298
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "pkgList":[Ljava/lang/String;
    aput-object v8, v7, v13

    .line 299
    .restart local v7    # "pkgList":[Ljava/lang/String;
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 300
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 305
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_a

    .line 306
    :cond_5
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 308
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 309
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    const-string v11, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 311
    :cond_6
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_8

    aget-object v8, v2, v5

    .line 313
    .restart local v8    # "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0, v8, v11}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 317
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_7
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_8

    aget-object v8, v2, v5

    .line 318
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 321
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 322
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_9
    :goto_4
    if-eqz v9, :cond_1

    .line 340
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 341
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 342
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->notifyHostsForProvidersChangedLocked()V

    .line 343
    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 322
    .end local v4    # "extras":Landroid/os/Bundle;
    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 324
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 325
    .restart local v4    # "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_b

    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_9

    .line 328
    :cond_b
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 329
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 330
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_5
    if-ge v5, v6, :cond_c

    aget-object v8, v2, v5

    .line 331
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 332
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 330
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 334
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_c
    monitor-exit v12

    goto :goto_4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v11
.end method

.method onConfigurationChanged()V
    .locals 9

    .prologue
    .line 250
    sget-boolean v7, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "Got onConfigurationChanged()"

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 252
    .local v6, "revised":Ljava/util/Locale;
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 253
    :cond_1
    iput-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 255
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v3, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v5, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 265
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 266
    .local v4, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 267
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 268
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    .line 264
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 271
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v4    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 272
    monitor-exit v8

    .line 274
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v5    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_4
    return-void

    .line 272
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method onSmartBookToggle(Z)V
    .locals 8
    .param p1, "state"    # Z

    .prologue
    .line 2213
    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mSMBState:Z

    if-ne v6, p1, :cond_0

    .line 2233
    :goto_0
    return-void

    .line 2214
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSMBState:Z

    .line 2215
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2216
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 2220
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2222
    .local v3, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2223
    .local v5, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2224
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2225
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2226
    .local v4, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v6, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2227
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2228
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    .line 2224
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2231
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v4    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 2232
    monitor-exit v7

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v5    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method onUserRemoved()V
    .locals 1

    .prologue
    .line 2013
    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2014
    return-void
.end method

.method onUserStopping()V
    .locals 4

    .prologue
    .line 2005
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2006
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2007
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2008
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2006
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2010
    .end local v2    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_0
    return-void
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1055
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    if-eqz p1, :cond_0

    .line 1061
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 1064
    array-length v0, p1

    .line 1066
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1067
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1068
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1069
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    .line 1070
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v2, :cond_3

    .line 1071
    const-string v3, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1072
    :cond_3
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    .line 1074
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    goto :goto_2

    .line 1077
    .end local v1    # "i":I
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/AppWidgetServiceImpl$Host;

    .prologue
    .line 1357
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1360
    :cond_0
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 36
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    .line 1783
    const/16 v29, 0x0

    .line 1784
    .local v29, "success":Z
    const/16 v32, 0x0

    .line 1786
    .local v32, "version":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    .line 1787
    .local v24, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1790
    const/16 v27, 0x0

    .line 1791
    .local v27, "providerIndex":I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1793
    .local v14, "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    :cond_0
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    .line 1794
    .local v31, "type":I
    const/16 v33, 0x2

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 1795
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 1796
    .local v30, "tag":Ljava/lang/String;
    const-string v33, "gs"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1797
    const/16 v33, 0x0

    const-string v34, "version"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v5

    .line 1799
    .local v5, "attributeValue":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v32

    .line 1923
    .end local v5    # "attributeValue":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1924
    const/16 v29, 0x1

    .line 1937
    .end local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "providerIndex":I
    .end local v31    # "type":I
    :goto_1
    if-eqz v29, :cond_13

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    add-int/lit8 v12, v33, -0x1

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_11

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1940
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 1800
    .end local v12    # "i":I
    .restart local v5    # "attributeValue":Ljava/lang/String;
    .restart local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "providerIndex":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    :catch_0
    move-exception v8

    .line 1801
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v32, 0x0

    goto :goto_0

    .line 1803
    .end local v5    # "attributeValue":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_2
    const-string v33, "p"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1806
    const/16 v33, 0x0

    const-string v34, "pkg"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1807
    .local v25, "pkg":Ljava/lang/String;
    const/16 v33, 0x0

    const-string v34, "cl"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1809
    .local v7, "cl":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v22

    .line 1811
    .local v22, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_3
    new-instance v33, Landroid/content/ComponentName;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1818
    :goto_3
    :try_start_4
    new-instance v33, Landroid/content/ComponentName;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v20

    .line 1819
    .local v20, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 1821
    new-instance v20, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .end local v20    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    invoke-direct/range {v20 .. v20}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V

    .line 1822
    .restart local v20    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    new-instance v33, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v33 .. v33}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1823
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v33, v0

    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1824
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    :cond_3
    if-eqz v20, :cond_4

    .line 1829
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    :cond_4
    add-int/lit8 v27, v27, 0x1

    .line 1832
    goto/16 :goto_0

    .line 1812
    .end local v20    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catch_1
    move-exception v8

    .line 1813
    .local v8, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v25, v34, v35

    invoke-virtual/range {v33 .. v34}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1815
    .local v26, "pkgs":[Ljava/lang/String;
    const/16 v33, 0x0

    aget-object v25, v26, v33

    goto/16 :goto_3

    .line 1832
    .end local v7    # "cl":Ljava/lang/String;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v22    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v25    # "pkg":Ljava/lang/String;
    .end local v26    # "pkgs":[Ljava/lang/String;
    :cond_5
    const-string v33, "h"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 1833
    new-instance v11, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v11}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    .line 1837
    .local v11, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    const/16 v33, 0x0

    const-string v34, "pkg"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    iput-object v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7

    .line 1839
    :try_start_5
    iget-object v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1843
    :goto_4
    :try_start_6
    iget-boolean v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 1846
    :cond_6
    const/16 v33, 0x0

    const-string v34, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    move/from16 v0, v33

    iput v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 1925
    .end local v11    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "providerIndex":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    :catch_2
    move-exception v8

    .line 1926
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v33, "AppWidgetServiceImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed parsing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1840
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .restart local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "providerIndex":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    :catch_3
    move-exception v9

    .line 1841
    .local v9, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v33, 0x1

    :try_start_7
    move/from16 v0, v33

    iput-boolean v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    .line 1927
    .end local v9    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "providerIndex":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    :catch_4
    move-exception v8

    .line 1928
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v33, "AppWidgetServiceImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed parsing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1850
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "providerIndex":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    :cond_7
    :try_start_8
    const-string v33, "b"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1851
    const/16 v33, 0x0

    const-string v34, "packageName"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1852
    .local v23, "packageName":Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 1929
    .end local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "providerIndex":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    :catch_5
    move-exception v8

    .line 1930
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v33, "AppWidgetServiceImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed parsing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1855
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .restart local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "providerIndex":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    :cond_8
    :try_start_9
    const-string v33, "g"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 1856
    new-instance v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v13}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    .line 1857
    .local v13, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/16 v33, 0x0

    const-string v34, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    move/from16 v0, v33

    iput v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    .line 1858
    iget v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_9

    .line 1859
    iget v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    .line 1862
    :cond_9
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1863
    .local v19, "options":Landroid/os/Bundle;
    const/16 v33, 0x0

    const-string v34, "min_width"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1864
    .local v18, "minWidthString":Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 1865
    const-string v33, "appWidgetMinWidth"

    const/16 v34, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1868
    :cond_a
    const/16 v33, 0x0

    const-string v34, "min_height"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1869
    .local v17, "minHeightString":Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 1870
    const-string v33, "appWidgetMinHeight"

    const/16 v34, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1873
    :cond_b
    const/16 v33, 0x0

    const-string v34, "max_width"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1874
    .local v16, "maxWidthString":Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 1875
    const-string v33, "appWidgetMaxWidth"

    const/16 v34, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1878
    :cond_c
    const/16 v33, 0x0

    const-string v34, "max_height"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1879
    .local v15, "maxHeightString":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 1880
    const-string v33, "appWidgetMaxHeight"

    const/16 v34, 0x10

    move/from16 v0, v34

    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1883
    :cond_d
    const/16 v33, 0x0

    const-string v34, "host_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1884
    .local v6, "categoryString":Ljava/lang/String;
    if-eqz v6, :cond_e

    .line 1885
    const-string v33, "appWidgetCategory"

    const/16 v34, 0x10

    move/from16 v0, v34

    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1888
    :cond_e
    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    .line 1890
    const/16 v33, 0x0

    const-string v34, "p"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1891
    .local v28, "providerString":Ljava/lang/String;
    if-eqz v28, :cond_f

    .line 1895
    const/16 v33, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 1896
    .local v21, "pIndex":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v33

    iput-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1901
    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1

    .line 1908
    .end local v21    # "pIndex":I
    :cond_f
    const/16 v33, 0x0

    const-string v34, "h"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 1909
    .local v10, "hIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, v33

    iput-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1910
    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1

    .line 1915
    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v33, v0

    if-eqz v33, :cond_10

    .line 1916
    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    :cond_10
    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    const-string v33, "AppWidgetServiceImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "readStateFromFileLocked appWidgetId: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " packageName: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 1931
    .end local v6    # "categoryString":Ljava/lang/String;
    .end local v10    # "hIndex":I
    .end local v13    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v14    # "loadedProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetServiceImpl$Provider;>;"
    .end local v15    # "maxHeightString":Ljava/lang/String;
    .end local v16    # "maxWidthString":Ljava/lang/String;
    .end local v17    # "minHeightString":Ljava/lang/String;
    .end local v18    # "minWidthString":Ljava/lang/String;
    .end local v19    # "options":Landroid/os/Bundle;
    .end local v24    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "providerIndex":I
    .end local v28    # "providerString":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    :catch_6
    move-exception v8

    .line 1932
    .local v8, "e":Ljava/io/IOException;
    const-string v33, "AppWidgetServiceImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed parsing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1933
    .end local v8    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 1934
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v33, "AppWidgetServiceImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed parsing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1944
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "i":I
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->performUpgrade(I)V

    .line 1956
    :cond_12
    return-void

    .line 1947
    .end local v12    # "i":I
    :cond_13
    const-string v33, "AppWidgetServiceImpl"

    const-string v34, "Failed to read state, clearing widgets and hosts."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1952
    .local v4, "N":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v4, :cond_12

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 1952
    add-int/lit8 v12, v12, 0x1

    goto :goto_5
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .locals 11
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1445
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_1

    .line 1449
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 1450
    .local v7, "alreadyRegistered":Z
    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1452
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1455
    .local v9, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    new-instance v3, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v8, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1460
    if-nez v7, :cond_1

    .line 1461
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1462
    .local v4, "period":J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 1463
    const-wide/32 v4, 0x1b7740

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1470
    .end local v4    # "period":J
    .end local v7    # "alreadyRegistered":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "token":J
    :cond_1
    return-void

    .line 1449
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1458
    .restart local v7    # "alreadyRegistered":Z
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    const/4 v4, 0x0

    .line 1402
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1403
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1404
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1406
    .local v2, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1408
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1410
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1411
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1412
    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1413
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1414
    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    .end local v2    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_0
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1417
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1418
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1421
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2143
    const/4 v4, 0x0

    .line 2144
    .local v4, "providersRemoved":Z
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2145
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2146
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2147
    .local v3, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v5, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2148
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2149
    const/4 v4, 0x1

    .line 2145
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2157
    .end local v3    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2158
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2159
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 2160
    .local v1, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iget-object v5, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2161
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 2158
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2165
    .end local v1    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_3
    return v4
.end method

.method saveStateLocked()V
    .locals 6

    .prologue
    .line 1689
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 1705
    :goto_0
    return-void

    .line 1692
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 1695
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1696
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1697
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1702
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1699
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1700
    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method savedStateFile()Landroid/util/AtomicFile;
    .locals 4

    .prologue
    .line 1988
    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1989
    .local v0, "dir":Ljava/io/File;
    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    .line 1990
    .local v2, "settingsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-nez v3, :cond_1

    .line 1991
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1992
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1995
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1998
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2000
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .locals 4
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;

    .prologue
    .line 1424
    const-string v1, "sendEnableIntentLocked"

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1427
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1428
    return-void
.end method

.method sendInitialBroadcasts()V
    .locals 6

    .prologue
    .line 1653
    const-string v4, "sendInitialBroadcasts"

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1654
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1655
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1656
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1657
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1658
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1659
    .local v3, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1660
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 1661
    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    .line 1662
    .local v1, "appWidgetIds":[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1663
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 1657
    .end local v1    # "appWidgetIds":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1666
    .end local v3    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    monitor-exit v5

    .line 1667
    return-void

    .line 1666
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 1431
    const-string v2, "sendUpdateIntentLocked"

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1432
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 1433
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1438
    const-string v2, "appWidgetIds"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1439
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1440
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1442
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 713
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 714
    if-eqz p2, :cond_1

    .line 715
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 719
    :goto_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 720
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 717
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 9
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1247
    .local p4, "updatedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const-string v7, "startListening"

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 1248
    iget-boolean v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v7, :cond_0

    .line 1249
    const/4 v7, 0x0

    new-array v6, v7, [I

    .line 1267
    :goto_0
    return-object v6

    .line 1251
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 1252
    .local v1, "callingUid":I
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1253
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1254
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    .line 1255
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1257
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1259
    iget-object v5, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    .line 1260
    .local v5, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1261
    .local v0, "N":I
    new-array v6, v0, [I

    .line 1262
    .local v6, "updatedIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1263
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1264
    .local v4, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v7, v6, v3

    .line 1265
    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1267
    .end local v4    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 1268
    .end local v0    # "N":I
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    .end local v3    # "i":I
    .end local v5    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    .end local v6    # "updatedIds":[I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public stopListening(I)V
    .locals 3
    .param p1, "hostId"    # I

    .prologue
    .line 1272
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1273
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1274
    monitor-exit v2

    .line 1283
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1278
    .local v0, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_1

    .line 1279
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    .line 1282
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Z)V
    .locals 2
    .param p1, "safeMode"    # Z

    .prologue
    .line 237
    const-string v0, "systemReady"

    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 238
    iput-boolean p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    .line 240
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 785
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 786
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 787
    monitor-exit v4

    .line 810
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 792
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 794
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v1

    .line 799
    .local v1, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v1, :cond_1

    .line 800
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 809
    .end local v1    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 803
    .restart local v1    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .restart local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    .line 805
    .local v0, "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 806
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 807
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .end local v0    # "conn":Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
    .end local v1    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 966
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    if-eqz p1, :cond_0

    .line 972
    sget-boolean v4, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppWidgetIds views: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 973
    :cond_2
    const/4 v1, 0x0

    .line 974
    .local v1, "bitmapMemoryUsage":I
    if-eqz p2, :cond_3

    .line 975
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v1

    .line 977
    :cond_3
    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-le v1, v4, :cond_4

    .line 978
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") The total memory cannot exceed that required to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fill the device\'s screen once."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 984
    :cond_4
    array-length v4, p1

    if-eqz v4, :cond_0

    .line 987
    array-length v0, p1

    .line 989
    .local v0, "N":I
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 990
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 991
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 992
    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v3

    .line 993
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 995
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_5
    monitor-exit v5

    goto :goto_0

    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 1126
    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .locals 4
    .param p1, "id"    # Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    .prologue
    .line 1132
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v1, :cond_0

    .line 1134
    if-nez p3, :cond_1

    .line 1136
    iput-object p2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1143
    :goto_0
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_0

    .line 1146
    :try_start_0
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :cond_0
    :goto_1
    return-void

    .line 1139
    :cond_1
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_1
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1013
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1014
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 1015
    monitor-exit v4

    .line 1037
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 1018
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1019
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    .line 1021
    .local v0, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    if-nez v0, :cond_1

    .line 1022
    monitor-exit v4

    goto :goto_0

    .line 1036
    .end local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1025
    .restart local v0    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1027
    .local v2, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1030
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1032
    const-string v3, "appWidgetId"

    iget v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    const-string v3, "appWidgetOptions"

    iget-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1034
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1035
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    .line 1036
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 10
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1102
    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1106
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 1108
    .local v5, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_1

    .line 1109
    const-string v6, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    monitor-exit v7

    goto :goto_0

    .line 1121
    .end local v5    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1112
    .restart local v5    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    :try_start_1
    iget-object v4, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    .line 1113
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1114
    .local v1, "callingUid":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1115
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1116
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1117
    .local v3, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1118
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1121
    .end local v3    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 25
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2053
    .local p2, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v21, "updateProvidersForPackageLocked"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    .line 2054
    const/16 v18, 0x0

    .line 2055
    .local v18, "providersUpdated":Z
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 2056
    .local v15, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2057
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2069
    .local v8, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_1

    const/4 v5, 0x0

    .line 2070
    .local v5, "N":I
    :goto_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_6

    .line 2071
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 2072
    .local v20, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2073
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x40000

    and-int v21, v21, v22

    if-eqz v21, :cond_2

    .line 2070
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2063
    .end local v5    # "N":I
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "i":I
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v19

    .line 2065
    .local v19, "re":Landroid/os/RemoteException;
    const/16 v21, 0x0

    .line 2139
    .end local v19    # "re":Landroid/os/RemoteException;
    :goto_3
    return v21

    .line 2069
    .restart local v8    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 2076
    .restart local v5    # "N":I
    .restart local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "i":I
    .restart local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2077
    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    .local v9, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 2079
    .local v16, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_3

    .line 2080
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2081
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2082
    const/16 v18, 0x1

    goto :goto_2

    .line 2085
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v17

    .line 2086
    .local v17, "parsed":Lcom/android/server/AppWidgetServiceImpl$Provider;
    if-eqz v17, :cond_0

    .line 2087
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2089
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2091
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2092
    .local v4, "M":I
    if-lez v4, :cond_0

    .line 2093
    invoke-static/range {v16 .. v16}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v7

    .line 2097
    .local v7, "appWidgetIds":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2098
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 2101
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v4, :cond_5

    .line 2102
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 2103
    .local v12, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 2104
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 2106
    :try_start_1
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v21, v0

    iget v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v24, v0

    invoke-interface/range {v21 .. v24}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2101
    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2108
    :catch_1
    move-exception v10

    .line 2112
    .local v10, "ex":Landroid/os/RemoteException;
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_5

    .line 2117
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v12    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    .line 2118
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 2126
    .end local v4    # "M":I
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "appWidgetIds":[I
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v14    # "j":I
    .end local v16    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v17    # "parsed":Lcom/android/server/AppWidgetServiceImpl$Provider;
    .end local v20    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2127
    add-int/lit8 v11, v5, -0x1

    :goto_6
    if-ltz v11, :cond_9

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 2129
    .restart local v16    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 2131
    if-eqz p2, :cond_7

    .line 2132
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2134
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    .line 2135
    const/16 v18, 0x1

    .line 2127
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .end local v16    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_9
    move/from16 v21, v18

    .line 2139
    goto/16 :goto_3
.end method

.method writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 14
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v10, 0x1

    .line 1711
    :try_start_0
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1712
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v6, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1713
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1714
    const/4 v9, 0x0

    const-string v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1715
    const/4 v9, 0x0

    const-string v11, "version"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1716
    const/4 v8, 0x0

    .line 1717
    .local v8, "providerIndex":I
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1718
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1719
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetServiceImpl$Provider;

    .line 1720
    .local v7, "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    iget-object v9, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1721
    const/4 v9, 0x0

    const-string v11, "p"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1722
    const/4 v9, 0x0

    const-string v11, "pkg"

    iget-object v12, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1723
    const/4 v9, 0x0

    const-string v11, "cl"

    iget-object v12, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1724
    const/4 v9, 0x0

    const-string v11, "p"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1725
    iput v8, v7, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    .line 1726
    add-int/lit8 v8, v8, 0x1

    .line 1718
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1730
    .end local v7    # "p":Lcom/android/server/AppWidgetServiceImpl$Provider;
    :cond_1
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1731
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 1732
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    .line 1733
    .local v2, "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    const/4 v9, 0x0

    const-string v11, "h"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1734
    const/4 v9, 0x0

    const-string v11, "pkg"

    iget-object v12, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1735
    const/4 v9, 0x0

    const-string v11, "id"

    iget v12, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1736
    const/4 v9, 0x0

    const-string v11, "h"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1737
    iput v3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    .line 1731
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1740
    .end local v2    # "host":Lcom/android/server/AppWidgetServiceImpl$Host;
    :cond_2
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1741
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 1742
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 1743
    .local v4, "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    const/4 v9, 0x0

    const-string v11, "g"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1744
    const/4 v9, 0x0

    const-string v11, "id"

    iget v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1745
    const/4 v9, 0x0

    const-string v11, "h"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v12, v12, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1746
    iget-object v9, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_3

    .line 1747
    const/4 v9, 0x0

    const-string v11, "p"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v12, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1749
    :cond_3
    iget-object v9, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    if-eqz v9, :cond_4

    .line 1750
    const/4 v9, 0x0

    const-string v11, "min_width"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1752
    const/4 v9, 0x0

    const-string v11, "min_height"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMinHeight"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1754
    const/4 v9, 0x0

    const-string v11, "max_width"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMaxWidth"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1756
    const/4 v9, 0x0

    const-string v11, "max_height"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetMaxHeight"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1758
    const/4 v9, 0x0

    const-string v11, "host_category"

    iget-object v12, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetCategory"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1761
    :cond_4
    const/4 v9, 0x0

    const-string v11, "g"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1741
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1764
    .end local v4    # "id":Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :cond_5
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1765
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1766
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    const/4 v11, 0x0

    const-string v12, "packageName"

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1768
    const/4 v9, 0x0

    const-string v11, "b"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1775
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "providerIndex":I
    :catch_0
    move-exception v1

    .line 1776
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to write state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v9, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    return v9

    .line 1771
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "providerIndex":I
    :cond_6
    const/4 v9, 0x0

    :try_start_1
    const-string v11, "gs"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1773
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v10

    .line 1774
    goto :goto_4
.end method
