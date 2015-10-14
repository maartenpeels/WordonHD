.class Lcom/chartboost/sdk/impl/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ba$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/impl/ba$d;

.field private b:Lcom/chartboost/sdk/impl/ba$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ba$d;Lcom/chartboost/sdk/impl/ba$b;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$a;->a:Lcom/chartboost/sdk/impl/ba$d;

    .line 403
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ba$a;->b:Lcom/chartboost/sdk/impl/ba$b;

    .line 404
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$a;->a:Lcom/chartboost/sdk/impl/ba$d;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$a;->a:Lcom/chartboost/sdk/impl/ba$d;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/ba$d;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;)V

    .line 408
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$a;->b:Lcom/chartboost/sdk/impl/ba$b;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$a;->b:Lcom/chartboost/sdk/impl/ba$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/ba$b;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/CBError;)V

    .line 412
    :cond_0
    return-void
.end method
