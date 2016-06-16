.class Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;
.super Ljava/lang/Object;
.source "FetchRequestConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/adapter/FetchRequestConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumeCallback"
.end annotation


# instance fields
.field private final adUnits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Ljava/lang/Runnable;

.field private final ranOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/adapter/FetchRequestConsumer;Ljava/lang/Runnable;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->this$0:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->ranOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    iput-object p2, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->callback:Ljava/lang/Runnable;

    .line 63
    iput-object p3, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->adUnits:Ljava/util/Collection;

    .line 64
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->adUnits:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 68
    iget-object v2, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->this$0:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    invoke-virtual {v2, v0}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consume(Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->this$0:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    # getter for: Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->store:Lcom/heyzap/mediation/FetchRequestStore;
    invoke-static {v1}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->access$000(Lcom/heyzap/mediation/adapter/FetchRequestConsumer;)Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/heyzap/mediation/FetchRequestStore;->removeUpdateCallback(Ljava/lang/Runnable;)V

    .line 70
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->ranOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;->this$0:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    # invokes: Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->unConsume(Lcom/heyzap/internal/Constants$AdUnit;)V
    invoke-static {v1, v0}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->access$100(Lcom/heyzap/mediation/adapter/FetchRequestConsumer;Lcom/heyzap/internal/Constants$AdUnit;)V

    goto :goto_0
.end method
