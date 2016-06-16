.class Lcom/chartboost/sdk/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Model/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 125
    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v2, :cond_0

    .line 131
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 136
    :cond_0
    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->g(Lcom/chartboost/sdk/Model/a;)V

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 139
    return-void

    .line 128
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 208
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v4, "creative"

    const-string v3, "cgn"

    .line 161
    .line 163
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 165
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 174
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 175
    :goto_0
    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 178
    const-string v1, "to"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 179
    const-string v1, "cgn"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 180
    const-string v1, "creative"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 181
    const-string v1, "ad_id"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 182
    const-string v1, "cgn"

    invoke-virtual {v0, v3, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 183
    const-string v1, "creative"

    invoke-virtual {v0, v4, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 184
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 185
    const-string v1, "more_type"

    invoke-virtual {v0, v1, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 187
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "retarget_reinstall"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_1
    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->n:Lcom/chartboost/sdk/impl/ba;

    .line 192
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1, p2, v5}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 198
    :goto_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    :cond_2
    move v0, v2

    .line 174
    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bc$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_1
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 213
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "reward"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 217
    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 222
    return-void
.end method
