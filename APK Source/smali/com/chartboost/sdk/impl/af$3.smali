.class Lcom/chartboost/sdk/impl/af$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/af;->c()Lcom/chartboost/sdk/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/af;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/af;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/chartboost/sdk/impl/af$3;->a:Lcom/chartboost/sdk/impl/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 188
    :cond_0
    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/af$3;->a:Lcom/chartboost/sdk/impl/af;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/af;->s(Lcom/chartboost/sdk/Model/a;)V

    .line 174
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public e(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->shouldDisplayRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public h(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
