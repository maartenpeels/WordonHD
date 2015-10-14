.class abstract Lcom/chartboost/sdk/impl/dg;
.super Lcom/chartboost/sdk/impl/db;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/dg$b;,
        Lcom/chartboost/sdk/impl/dg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/chartboost/sdk/impl/db",
        "<TK;TV;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lcom/chartboost/sdk/impl/db$h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/chartboost/sdk/impl/db$h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/db;-><init>(Ljava/util/Map;Lcom/chartboost/sdk/impl/db$h$a;)V

    .line 224
    return-void
.end method

.method public static b()Lcom/chartboost/sdk/impl/dg$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/chartboost/sdk/impl/dg$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/chartboost/sdk/impl/dg$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/dg$a;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/chartboost/sdk/impl/dg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/chartboost/sdk/impl/dg",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/chartboost/sdk/impl/dg;->b()Lcom/chartboost/sdk/impl/dg$a;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/dg$a;->a()Lcom/chartboost/sdk/impl/dg;

    move-result-object v0

    return-object v0
.end method
