.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->attemptNextFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 133
    new-instance v6, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;

    invoke-direct {v7, p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;)V

    new-instance v0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 149
    return-void
.end method
