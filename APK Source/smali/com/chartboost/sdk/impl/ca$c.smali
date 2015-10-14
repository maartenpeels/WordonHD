.class abstract Lcom/chartboost/sdk/impl/ca$c;
.super Lcom/chartboost/sdk/impl/bx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field protected final a:Lcom/chartboost/sdk/impl/cc;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cc;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bx;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ca$c;->a:Lcom/chartboost/sdk/impl/cc;

    .line 104
    return-void
.end method
