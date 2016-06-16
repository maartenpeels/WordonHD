.class Lcom/chartboost/sdk/impl/ai$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ai$a;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ai$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ai$a;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a$3;->a:Lcom/chartboost/sdk/impl/ai$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 290
    const-string v0, "InterstitialVideoViewProtocol"

    const-string v1, "controls %s automatically from timer"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a$3;->a:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v3, v3, Lcom/chartboost/sdk/impl/ai;->p:Z

    if-eqz v3, :cond_0

    const-string v3, "hidden"

    :goto_0
    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$3;->a:Lcom/chartboost/sdk/impl/ai$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a$3;->a:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/ai;->p:Z

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1, v4}, Lcom/chartboost/sdk/impl/ap;->a(ZZ)V

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a$3;->a:Lcom/chartboost/sdk/impl/ai$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a$3;->a:Lcom/chartboost/sdk/impl/ai$a;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void

    .line 290
    :cond_0
    const-string v3, "shown"

    goto :goto_0

    :cond_1
    move v1, v5

    .line 291
    goto :goto_1
.end method
