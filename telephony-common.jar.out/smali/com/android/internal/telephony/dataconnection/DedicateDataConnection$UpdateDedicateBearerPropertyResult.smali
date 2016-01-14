.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDedicateBearerPropertyResult"
.end annotation


# instance fields
.field public newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

.field public oldProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

.field public setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 1
    .param p2, "curProperty"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 661
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->oldProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 662
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 663
    return-void
.end method
