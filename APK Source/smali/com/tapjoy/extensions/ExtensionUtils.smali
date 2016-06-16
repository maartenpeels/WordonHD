.class public Lcom/tapjoy/extensions/ExtensionUtils;
.super Ljava/lang/Object;
.source "ExtensionUtils.java"


# static fields
.field private static CONNECT_FLAG_DICTIONARY_NAME:Ljava/lang/String;

.field public static final FRE_FALSE:Lcom/adobe/fre/FREObject;

.field public static final FRE_TRUE:Lcom/adobe/fre/FREObject;

.field private static actionScriptDictionaryRefs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static eventRequestMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static m_Activity:Landroid/app/Activity;

.field private static m_Context:Landroid/content/Context;

.field private static m_FREContext:Lcom/adobe/fre/FREContext;

.field private static m_bDebug:Ljava/lang/Boolean;

.field private static m_eventGuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    sput-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->eventRequestMap:Ljava/util/Hashtable;

    .line 30
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/extensions/ExtensionUtils;->initBool(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->FRE_TRUE:Lcom/adobe/fre/FREObject;

    .line 31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/extensions/ExtensionUtils;->initBool(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->FRE_FALSE:Lcom/adobe/fre/FREObject;

    .line 33
    const-string v0, "connectFlags"

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->CONNECT_FLAG_DICTIONARY_NAME:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->m_FREContext:Lcom/adobe/fre/FREContext;

    .line 36
    sput-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->m_Activity:Landroid/app/Activity;

    .line 37
    sput-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->m_Context:Landroid/content/Context;

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_bDebug:Ljava/lang/Boolean;

    .line 39
    sput-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->actionScriptDictionaryRefs:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEventGuid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "androidGuid"    # Ljava/lang/String;
    .param p1, "asGuid"    # Ljava/lang/String;

    .prologue
    .line 519
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    return-void
.end method

.method public static checkIsBoolean(Lcom/adobe/fre/FREObject;)Z
    .locals 2
    .param p0, "object"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v1, 0x0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    goto :goto_0

    .line 300
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    goto :goto_0

    .line 304
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 306
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    goto :goto_0
.end method

.method public static checkIsDouble(Lcom/adobe/fre/FREObject;)Z
    .locals 2
    .param p0, "object"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v1, 0x0

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 375
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    goto :goto_0

    .line 366
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v0

    .line 368
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    goto :goto_0

    .line 370
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 372
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    goto :goto_0
.end method

.method public static checkIsInt(Lcom/adobe/fre/FREObject;)Z
    .locals 2
    .param p0, "object"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v1, 0x0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 353
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    goto :goto_0

    .line 344
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    goto :goto_0

    .line 348
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 350
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    goto :goto_0
.end method

.method public static checkIsString(Lcom/adobe/fre/FREObject;)Z
    .locals 2
    .param p0, "object"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v1, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 331
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    goto :goto_0

    .line 322
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    goto :goto_0

    .line 326
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 328
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_bDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_FREContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_FREContext:Lcom/adobe/fre/FREContext;

    const-string v1, "TRACE"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static enableDebug()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_bDebug:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method public static getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "asGuid"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v0, 0x0

    .line 536
    .local v0, "androidGuid":Ljava/lang/String;
    sget-object v3, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 538
    sget-object v3, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 540
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "androidGuid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "androidGuid":Ljava/lang/String;
    goto :goto_0

    .line 546
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static getBoolean(Lcom/adobe/fre/FREObject;)Z
    .locals 2
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 453
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    .line 465
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 457
    :catch_1
    move-exception v0

    .line 459
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 463
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getConnectFlags()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->CONNECT_FLAG_DICTIONARY_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDouble(Lcom/adobe/fre/FREObject;)D
    .locals 3
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 425
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v1

    .line 439
    :goto_0
    return-wide v1

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    .line 439
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :goto_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 431
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    .line 435
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 437
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getEventGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "androidGuid"    # Ljava/lang/String;

    .prologue
    .line 525
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "androidGuid":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 529
    :goto_0
    return-object v0

    .restart local p0    # "androidGuid":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFREBool(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p0, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->FRE_TRUE:Lcom/adobe/fre/FREObject;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->FRE_FALSE:Lcom/adobe/fre/FREObject;

    goto :goto_0
.end method

.method public static getFREObject(D)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 498
    :try_start_0
    invoke-static {p0, p1}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 504
    :goto_0
    return-object v1

    .line 500
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 504
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFREObject(F)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 509
    float-to-double v0, p0

    invoke-static {v0, v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getFREObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v0

    return-object v0
.end method

.method public static getFREObject(I)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 485
    :try_start_0
    invoke-static {p0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 487
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 491
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFREObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 472
    :try_start_0
    invoke-static {p0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 478
    :goto_0
    return-object v1

    .line 474
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 478
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFloat(Lcom/adobe/fre/FREObject;)F
    .locals 2
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 444
    invoke-static {p0}, Lcom/tapjoy/extensions/ExtensionUtils;->getDouble(Lcom/adobe/fre/FREObject;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getInt(Lcom/adobe/fre/FREObject;)I
    .locals 2
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    .line 418
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 410
    :catch_1
    move-exception v0

    .line 412
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    .line 414
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 416
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "dictionaryRefName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;
    .locals 2
    .param p0, "dictionaryRefName"    # Ljava/lang/String;
    .param p1, "createNewInstance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->actionScriptDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 95
    .local v0, "currentDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "currentDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 97
    .restart local v0    # "currentDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/tapjoy/extensions/ExtensionUtils;->actionScriptDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-object v0
.end method

.method public static getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 397
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    .line 397
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    .line 391
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v0    # "e":Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v0

    .line 395
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1
.end method

.method public static init(Lcom/adobe/fre/FREContext;)V
    .locals 1
    .param p0, "freContext"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 48
    sput-object p0, Lcom/tapjoy/extensions/ExtensionUtils;->m_FREContext:Lcom/adobe/fre/FREContext;

    .line 49
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_FREContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_Activity:Landroid/app/Activity;

    .line 50
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_Context:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_eventGuidMap:Ljava/util/HashMap;

    .line 53
    :cond_0
    return-void
.end method

.method private static initBool(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p0, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 203
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDictionaryInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "dictionaryRefToAdd"    # Ljava/lang/String;
    .param p2, "dictionaryToAddTo"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v2, Lcom/tapjoy/extensions/ExtensionUtils;->actionScriptDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 174
    .local v1, "dictionaryToTransferTo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljava/util/Hashtable;

    .end local v1    # "dictionaryToTransferTo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 176
    .restart local v1    # "dictionaryToTransferTo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/tapjoy/extensions/ExtensionUtils;->actionScriptDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v2, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    sget-object v2, Lcom/tapjoy/extensions/ExtensionUtils;->actionScriptDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 181
    .local v0, "dictionaryToBeSetAsValue":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D
    .param p3, "dictionaryToAddTo"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p3}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "dictionaryToAddTo"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p2}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;Lcom/adobe/fre/FREObject;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Lcom/adobe/fre/FREObject;
    .param p2, "dictionaryToAddTo"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->checkIsString(Lcom/adobe/fre/FREObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/tapjoy/extensions/ExtensionUtils;->setKeyValueInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->checkIsInt(Lcom/adobe/fre/FREObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->getInt(Lcom/adobe/fre/FREObject;)I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/tapjoy/extensions/ExtensionUtils;->setKeyValueInDictionary(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->checkIsDouble(Lcom/adobe/fre/FREObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->getDouble(Lcom/adobe/fre/FREObject;)D

    move-result-wide v0

    invoke-static {p0, v0, v1, p2}, Lcom/tapjoy/extensions/ExtensionUtils;->setKeyValueInDictionary(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->checkIsBoolean(Lcom/adobe/fre/FREObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->getBoolean(Lcom/adobe/fre/FREObject;)Z

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/tapjoy/extensions/ExtensionUtils;->setKeyValueInDictionary(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string v0, "Tapjoy ExtensionUtils"

    const-string v1, "Type was not determined in Actionscript bridge. Failed to set key."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "dictionaryToAddTo"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p2}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "dictionaryToAddTo"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p2}, Lcom/tapjoy/extensions/ExtensionUtils;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/util/ArrayList;

    if-ne v9, v10, :cond_1

    .line 225
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 226
    .local v7, "jsonArray":Lorg/json/JSONArray;
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 227
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 229
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/extensions/ExtensionUtils;->toJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 231
    :cond_0
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 286
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return-object v9

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 238
    .local v4, "fields":[Ljava/lang/reflect/Field;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 239
    .local v6, "json":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v9, v4

    if-ge v5, v9, :cond_8

    .line 241
    aget-object v9, v4, v5

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "key":Ljava/lang/String;
    aget-object v9, v4, v5

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 245
    .local v3, "field":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-class v9, Ljava/lang/String;

    if-ne v3, v9, :cond_3

    .line 247
    aget-object v9, v4, v5

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 249
    :cond_3
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_4

    .line 251
    aget-object v9, v4, v5

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 270
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 272
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 282
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "field":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 284
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 286
    const-string v9, ""

    goto :goto_1

    .line 253
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "field":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "i":I
    .restart local v6    # "json":Lorg/json/JSONObject;
    .restart local v8    # "key":Ljava/lang/String;
    :cond_4
    :try_start_3
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_5

    .line 255
    aget-object v9, v4, v5

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 274
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 276
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 257
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_5
    :try_start_5
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_6

    .line 259
    aget-object v9, v4, v5

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_3

    .line 261
    :cond_6
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_7

    .line 263
    aget-object v9, v4, v5

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 265
    :cond_7
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v9, :cond_2

    .line 267
    aget-object v9, v4, v5

    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 279
    .end local v3    # "field":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "key":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x2

    :try_start_6
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v9

    goto/16 :goto_1
.end method

.method public static toastDebug(Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/tapjoy/extensions/ExtensionUtils;->m_bDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/tapjoy/extensions/ExtensionUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/tapjoy/extensions/ExtensionUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    return-void
.end method
