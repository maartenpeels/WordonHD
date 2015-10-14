.class final Lcom/chartboost/sdk/impl/bi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bi;->c(Lcom/chartboost/sdk/impl/bi$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bi$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bi$a;

.field final synthetic b:Lcom/chartboost/sdk/Model/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bi$a;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bi$2;->a:Lcom/chartboost/sdk/impl/bi$a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bi$2;->b:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bi$2;->a:Lcom/chartboost/sdk/impl/bi$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bi$2;->b:Lcom/chartboost/sdk/Model/a;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bi$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 247
    return-void
.end method
