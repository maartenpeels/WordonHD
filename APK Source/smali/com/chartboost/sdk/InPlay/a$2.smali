.class Lcom/chartboost/sdk/InPlay/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/InPlay/a;->b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/e$a;

.field final synthetic b:Lcom/chartboost/sdk/InPlay/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a$2;->b:Lcom/chartboost/sdk/InPlay/a;

    iput-object p2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 261
    const-string v1, "to"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 262
    const-string v1, "cgn"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 263
    const-string v1, "creative"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 264
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 265
    const-string v1, "type"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 266
    const-string v1, "more_type"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 268
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->s()V

    .line 269
    return-void
.end method
