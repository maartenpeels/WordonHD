.class Lcom/heyzap/mediation/ConcurrentLoaderStrategy$1;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$1;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$1;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    # invokes: Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startNextAdapter()V
    invoke-static {v0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->access$000(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;)V

    .line 43
    return-void
.end method
