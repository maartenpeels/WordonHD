.class public Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;
.super Ljava/lang/Exception;
.source "AdapterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/adapter/AdapterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterConfigurationError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/adapter/AdapterConfiguration;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterConfiguration;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError;->this$0:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 94
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method
