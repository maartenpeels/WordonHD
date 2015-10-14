.class public Lcom/chartboost/sdk/impl/bb$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/e$a;

.field private b:Lcom/chartboost/sdk/impl/i;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/i;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb$b;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 379
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bb$b;->b:Lcom/chartboost/sdk/impl/i;

    .line 380
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bb$b;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$b;->a:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bb$b;)Lcom/chartboost/sdk/impl/i;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$b;->b:Lcom/chartboost/sdk/impl/i;

    return-object v0
.end method
