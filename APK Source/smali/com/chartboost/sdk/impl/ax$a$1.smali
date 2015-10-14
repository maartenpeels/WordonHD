.class Lcom/chartboost/sdk/impl/ax$a$1;
.super Lcom/chartboost/sdk/impl/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ax$a;-><init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ax;

.field final synthetic b:Lcom/chartboost/sdk/impl/ax$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ax$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ax;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$a$1;->b:Lcom/chartboost/sdk/impl/ax$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/ax$a$1;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a$1;->b:Lcom/chartboost/sdk/impl/ax$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$a;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/impl/ax;)V

    .line 103
    return-void
.end method
