.class public Lcom/heyzap/mediation/config/MediationConfig$AdapterNotFoundException;
.super Ljava/lang/Exception;
.source "MediationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/config/MediationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/config/MediationConfig;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/config/MediationConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfig$AdapterNotFoundException;->this$0:Lcom/heyzap/mediation/config/MediationConfig;

    .line 80
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method
