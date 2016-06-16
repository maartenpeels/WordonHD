.class public Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;
.super Ljava/lang/Exception;
.source "AbstractFetchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/abstr/AbstractFetchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlreadyInstalledException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fb010804eeb5029L


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/abstr/AbstractFetchHandler;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/abstr/AbstractFetchHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;->this$0:Lcom/heyzap/house/abstr/AbstractFetchHandler;

    .line 165
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 166
    return-void
.end method
