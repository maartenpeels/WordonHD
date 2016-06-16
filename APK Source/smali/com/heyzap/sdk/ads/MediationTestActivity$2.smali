.class Lcom/heyzap/sdk/ads/MediationTestActivity$2;
.super Ljava/util/ArrayList;
.source "MediationTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V
    .locals 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$2;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$2;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 60
    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity$2;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
