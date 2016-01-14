.class public final Landroid/content/pm/PackageParser$ReadBufferLruCache;
.super Landroid/util/LruCache;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReadBufferLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser;I)V
    .locals 0
    .param p2, "maxSize"    # I

    .prologue
    .line 4580
    iput-object p1, p0, Landroid/content/pm/PackageParser$ReadBufferLruCache;->this$0:Landroid/content/pm/PackageParser;

    .line 4581
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 4582
    return-void
.end method
