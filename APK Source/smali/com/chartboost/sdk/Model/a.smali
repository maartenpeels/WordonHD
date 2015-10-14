.class public final Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/a$1;,
        Lcom/chartboost/sdk/Model/a$a;,
        Lcom/chartboost/sdk/Model/a$d;,
        Lcom/chartboost/sdk/Model/a$c;,
        Lcom/chartboost/sdk/Model/a$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Date;

.field public b:Lcom/chartboost/sdk/Model/a$b;

.field public c:Lcom/chartboost/sdk/Model/a$c;

.field public d:Ljava/lang/String;

.field public e:Lcom/chartboost/sdk/Model/a$d;

.field public f:Z

.field public g:Z

.field public h:Lcom/chartboost/sdk/impl/bq;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/chartboost/sdk/impl/ba;

.field public o:Z

.field public p:Z

.field public q:Z

.field private r:Lcom/chartboost/sdk/Libraries/e$a;

.field private s:Z

.field private t:Ljava/lang/Boolean;

.field private u:Lcom/chartboost/sdk/f;

.field private v:Lcom/chartboost/sdk/Model/a$a;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 97
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 99
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 101
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 107
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 109
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 114
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 115
    iput-boolean p2, p0, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 116
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 117
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 118
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 119
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    .line 120
    iput-boolean p4, p0, Lcom/chartboost/sdk/Model/a;->i:Z

    .line 121
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 122
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->d:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 123
    iput-object p3, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 1

    .prologue
    .line 382
    if-nez p1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :goto_0
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 383
    return-void

    :cond_0
    move-object v0, p1

    .line 382
    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    if-nez p1, :cond_2

    .line 131
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 132
    :goto_0
    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 133
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    .line 134
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 135
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    .line 137
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "native"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    if-eqz v1, :cond_1

    .line 140
    sget-object v1, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v2, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 168
    return-void

    .line 142
    :pswitch_0
    const-string v1, "media-type"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 144
    new-instance v1, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 145
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_1

    .line 147
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->a:Lcom/chartboost/sdk/Model/a$d;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 148
    new-instance v1, Lcom/chartboost/sdk/impl/ah;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_1

    .line 152
    :pswitch_1
    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 153
    new-instance v1, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 154
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_1

    .line 157
    :pswitch_2
    new-instance v1, Lcom/chartboost/sdk/impl/ax;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ax;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 158
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_1

    .line 164
    :cond_1
    new-instance v1, Lcom/chartboost/sdk/impl/bs;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/bs;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 231
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 315
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 212
    :goto_0
    return v0

    .line 193
    :cond_1
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "deep-link"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    :try_start_0
    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    :try_start_1
    new-instance v0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 208
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    if-eqz v1, :cond_5

    move v0, v3

    .line 209
    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 201
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v1

    goto :goto_2

    .line 210
    :cond_5
    iput-boolean v4, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 211
    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v1, p0, v0, p2}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    move v0, v4

    .line 212
    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 178
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 180
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 186
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 237
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 244
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    const-string v1, "CBImpression"

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->b()Z

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 255
    :cond_0
    const-string v0, "CBImpression"

    const-string v0, "reinitializing -- no view protocol exists!!"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    :cond_1
    const-string v0, "CBImpression"

    const-string v0, "reinitializing -- view not yet created"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->j()V

    .line 265
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->d()V

    .line 270
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 271
    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    const-string v2, "CBImpression"

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->d()V

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bq;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Lcom/chartboost/sdk/impl/bq;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->f()V

    .line 289
    :cond_2
    const-string v0, "CBImpression"

    const-string v0, "Destroying the view"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v1, "CBImpression"

    const-string v1, "Exception raised while cleaning up views"

    invoke-static {v2, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public k()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$a;->setVisibility(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 319
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 326
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 327
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 328
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/chartboost/sdk/d;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 342
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    :goto_0
    return-object v0

    .line 337
    :pswitch_0
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 352
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->j()Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->k()V

    .line 365
    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 369
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->l()V

    .line 374
    :cond_0
    return-void
.end method

.method public w()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public x()Lcom/chartboost/sdk/f;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    return v0
.end method
