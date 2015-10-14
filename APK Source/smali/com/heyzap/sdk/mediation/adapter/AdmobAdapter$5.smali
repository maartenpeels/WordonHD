.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener",
        "<",
        "Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field final synthetic val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    iget-object v1, p2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-interface {v0, p1, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V

    .line 201
    return-void
.end method

.method public bridge synthetic onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;)V

    return-void
.end method
