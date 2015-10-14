.class public Lcom/facebook/internal/Utility$FetchedAppSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchedAppSettings"
.end annotation


# instance fields
.field private dialogConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private supportsImplicitLogging:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$DialogFeatureConfig;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging:Z

    iput-object p2, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxContent:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxEnabled:Z

    iput-object p4, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/Utility$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/internal/Utility$FetchedAppSettings;-><init>(ZLjava/lang/String;ZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getDialogConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
