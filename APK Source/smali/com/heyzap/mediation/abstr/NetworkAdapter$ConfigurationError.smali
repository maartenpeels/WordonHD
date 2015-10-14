.class public Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
.super Ljava/lang/Exception;
.source "NetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/abstr/NetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ed8db973eb4c0d3L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 174
    return-void
.end method
