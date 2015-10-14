.class Lcom/chartboost/sdk/impl/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ae;->c()Lcom/chartboost/sdk/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ae;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ae;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ae$1;->a:Lcom/chartboost/sdk/impl/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didClickInterstitial(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 132
    :cond_0
    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCloseInterstitial(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didDismissInterstitial(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCacheInterstitial(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public e(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->shouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g(Lcom/chartboost/sdk/Model/a;)Z
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
