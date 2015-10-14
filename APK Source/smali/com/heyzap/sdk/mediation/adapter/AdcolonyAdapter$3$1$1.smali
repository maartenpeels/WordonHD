.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "AdcolonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

.field final synthetic val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->this$2:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->val$wrapper:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$3$1$1;->retry()V

    .line 214
    :cond_3
    return-void
.end method
