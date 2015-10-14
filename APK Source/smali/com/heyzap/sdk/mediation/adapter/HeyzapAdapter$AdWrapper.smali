.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AdWrapper"
.end annotation


# instance fields
.field public adRequest:Lcom/heyzap/house/request/AdRequest;

.field public final clickListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final closeListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final displayListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field public final fetchListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field public final impressionListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final incentiveListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 255
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    .line 256
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 257
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 258
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    .line 259
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    .line 260
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->impressionListener:Lcom/heyzap/internal/SettableFuture;

    .line 263
    return-void
.end method
