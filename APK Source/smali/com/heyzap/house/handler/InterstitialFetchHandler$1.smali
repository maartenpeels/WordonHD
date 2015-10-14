.class Lcom/heyzap/house/handler/InterstitialFetchHandler$1;
.super Ljava/lang/Object;
.source "InterstitialFetchHandler.java"

# interfaces
.implements Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/handler/InterstitialFetchHandler;->onFetchSuccess(Lorg/json/JSONObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/handler/InterstitialFetchHandler;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/InterstitialFetchHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/heyzap/house/handler/InterstitialFetchHandler$1;->this$0:Lcom/heyzap/house/handler/InterstitialFetchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/heyzap/house/handler/InterstitialFetchHandler$1;->this$0:Lcom/heyzap/house/handler/InterstitialFetchHandler;

    # invokes: Lcom/heyzap/house/handler/InterstitialFetchHandler;->onFailure(Ljava/lang/Throwable;)V
    invoke-static {v0, p2}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->access$000(Lcom/heyzap/house/handler/InterstitialFetchHandler;Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/heyzap/house/handler/InterstitialFetchHandler$1;->this$0:Lcom/heyzap/house/handler/InterstitialFetchHandler;

    # invokes: Lcom/heyzap/house/handler/InterstitialFetchHandler;->onSuccess(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/heyzap/house/handler/InterstitialFetchHandler;->access$100(Lcom/heyzap/house/handler/InterstitialFetchHandler;Ljava/util/List;)V

    goto :goto_0
.end method
