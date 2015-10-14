.class Lcom/chartboost/sdk/impl/bb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bb$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bb;

.field private b:Lcom/chartboost/sdk/impl/ba;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/bb;Lcom/chartboost/sdk/impl/ba;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb$c;->a:Lcom/chartboost/sdk/impl/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)V

    .line 205
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->c()V

    .line 206
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "https://live.chartboost.com"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ba;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ba;->d()V

    .line 208
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ba;->a()V

    .line 209
    new-instance v1, Lcom/chartboost/sdk/impl/bb$c$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/chartboost/sdk/impl/bb$c$a;-><init>(Lcom/chartboost/sdk/impl/bb$c;ILjava/lang/String;Lcom/chartboost/sdk/impl/ba;)V

    .line 210
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    const/16 v2, 0x7530

    const/4 v3, 0x0

    invoke-direct {v0, v2, v4, v3}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bb$c$a;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c;->a:Lcom/chartboost/sdk/impl/bb;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/bb;)Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 212
    return-void
.end method
