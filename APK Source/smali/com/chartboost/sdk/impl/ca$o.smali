.class Lcom/chartboost/sdk/impl/ca$o;
.super Lcom/chartboost/sdk/impl/ca$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cc;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ca$c;-><init>(Lcom/chartboost/sdk/impl/cc;)V

    .line 360
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 364
    new-instance v2, Lcom/chartboost/sdk/impl/bt;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/bt;-><init>()V

    .line 365
    const-string v1, "$regex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/chartboost/sdk/impl/bv;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    move-object v0, p1

    check-cast v0, Ljava/util/regex/Pattern;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->flags()I

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "$options"

    check-cast p1, Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->flags()I

    move-result v3

    invoke-static {v3}, Lcom/chartboost/sdk/impl/bu;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/chartboost/sdk/impl/bv;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ca$o;->a:Lcom/chartboost/sdk/impl/cc;

    invoke-interface {v1, v2, p2}, Lcom/chartboost/sdk/impl/cc;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 370
    return-void
.end method
