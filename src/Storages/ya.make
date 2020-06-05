LIBRARY()

PEERDIR(
    clickhouse/src/Common
    contrib/libs/sparsehash
)

SRCS(
    Distributed/DirectoryMonitor.cpp
    Distributed/DistributedBlockOutputStream.cpp
    LiveView/StorageLiveView.cpp
    MergeTree/ActiveDataPartSet.cpp
    MergeTree/AllMergeSelector.cpp
    MergeTree/BackgroundProcessingPool.cpp
    MergeTree/BoolMask.cpp
    MergeTree/checkDataPart.cpp
    MergeTree/DataPartsExchange.cpp
    MergeTree/EphemeralLockInZooKeeper.cpp
    MergeTree/IMergedBlockOutputStream.cpp
    MergeTree/IMergeTreeDataPart.cpp
    MergeTree/IMergeTreeDataPartWriter.cpp
    MergeTree/IMergeTreeReader.cpp
    MergeTree/KeyCondition.cpp
    MergeTree/LevelMergeSelector.cpp
    MergeTree/localBackup.cpp
    MergeTree/MergedBlockOutputStream.cpp
    MergeTree/MergedColumnOnlyOutputStream.cpp
    MergeTree/MergeList.cpp
    MergeTree/MergeTreeBaseSelectProcessor.cpp
    MergeTree/MergeTreeBlockOutputStream.cpp
    MergeTree/MergeTreeBlockReadUtils.cpp
    MergeTree/MergeTreeData.cpp
    MergeTree/MergeTreeDataMergerMutator.cpp
    MergeTree/MergeTreeDataPartChecksum.cpp
    MergeTree/MergeTreeDataPartCompact.cpp
    MergeTree/MergeTreeDataPartTTLInfo.cpp
    MergeTree/MergeTreeDataPartType.cpp
    MergeTree/MergeTreeDataPartWide.cpp
    MergeTree/MergeTreeDataPartWriterCompact.cpp
    MergeTree/MergeTreeDataPartWriterWide.cpp
    MergeTree/MergeTreeDataSelectExecutor.cpp
    MergeTree/MergeTreeDataWriter.cpp
    MergeTree/MergeTreeIndexAggregatorBloomFilter.cpp
    MergeTree/MergeTreeIndexBloomFilter.cpp
    MergeTree/MergeTreeIndexConditionBloomFilter.cpp
    MergeTree/MergeTreeIndexFullText.cpp
    MergeTree/MergeTreeIndexGranularity.cpp
    MergeTree/MergeTreeIndexGranularityInfo.cpp
    MergeTree/MergeTreeIndexGranuleBloomFilter.cpp
    MergeTree/MergeTreeIndexMinMax.cpp
    MergeTree/MergeTreeIndexReader.cpp
    MergeTree/MergeTreeIndexSet.cpp
    MergeTree/MergeTreeIndices.cpp
    MergeTree/MergeTreeMarksLoader.cpp
    MergeTree/MergeTreeMutationEntry.cpp
    MergeTree/MergeTreePartInfo.cpp
    MergeTree/MergeTreePartition.cpp
    MergeTree/MergeTreePartsMover.cpp
    MergeTree/MergeTreeRangeReader.cpp
    MergeTree/MergeTreeReaderCompact.cpp
    MergeTree/MergeTreeReaderStream.cpp
    MergeTree/MergeTreeReaderWide.cpp
    MergeTree/MergeTreeReadPool.cpp
    MergeTree/MergeTreeReverseSelectProcessor.cpp
    MergeTree/MergeTreeSelectProcessor.cpp
    MergeTree/MergeTreeSequentialSource.cpp
    MergeTree/MergeTreeSettings.cpp
    MergeTree/MergeTreeThreadSelectBlockInputProcessor.cpp
    MergeTree/MergeTreeWhereOptimizer.cpp
    MergeTree/registerStorageMergeTree.cpp
    MergeTree/ReplicatedMergeTreeAddress.cpp
    MergeTree/ReplicatedMergeTreeAltersSequence.cpp
    MergeTree/ReplicatedMergeTreeBlockOutputStream.cpp
    MergeTree/ReplicatedMergeTreeCleanupThread.cpp
    MergeTree/ReplicatedMergeTreeLogEntry.cpp
    MergeTree/ReplicatedMergeTreeMutationEntry.cpp
    MergeTree/ReplicatedMergeTreePartCheckThread.cpp
    MergeTree/ReplicatedMergeTreePartHeader.cpp
    MergeTree/ReplicatedMergeTreeQueue.cpp
    MergeTree/ReplicatedMergeTreeRestartingThread.cpp
    MergeTree/ReplicatedMergeTreeTableMetadata.cpp
    MergeTree/SimpleMergeSelector.cpp
    MergeTree/TTLMergeSelector.cpp
    System/attachSystemTables.cpp
    System/StorageSystemAggregateFunctionCombinators.cpp
    System/StorageSystemAsynchronousMetrics.cpp
    System/StorageSystemBuildOptions.cpp
    System/StorageSystemClusters.cpp
    System/StorageSystemCurrentRoles.cpp
    System/StorageSystemCollations.cpp
    System/StorageSystemColumns.cpp
    System/StorageSystemContributors.cpp
    System/StorageSystemContributors.generated.cpp
    System/StorageSystemDatabases.cpp
    System/StorageSystemDataTypeFamilies.cpp
    System/StorageSystemDetachedParts.cpp
    System/StorageSystemDictionaries.cpp
    System/StorageSystemDisks.cpp
    System/StorageSystemEnabledRoles.cpp
    System/StorageSystemEvents.cpp
    System/StorageSystemFormats.cpp
    System/StorageSystemFunctions.cpp
    System/StorageSystemGrants.cpp
    System/StorageSystemGraphite.cpp
    System/StorageSystemMacros.cpp
    System/StorageSystemMerges.cpp
    System/StorageSystemMergeTreeSettings.cpp
    System/StorageSystemMetrics.cpp
    System/StorageSystemModels.cpp
    System/StorageSystemMutations.cpp
    System/StorageSystemNumbers.cpp
    System/StorageSystemOne.cpp
    System/StorageSystemParts.cpp
    System/StorageSystemPartsBase.cpp
    System/StorageSystemPartsColumns.cpp
    System/StorageSystemPrivileges.cpp
    System/StorageSystemProcesses.cpp
    System/StorageSystemQuotaLimits.cpp
    System/StorageSystemQuotaUsage.cpp
    System/StorageSystemQuotas.cpp
    System/StorageSystemQuotasUsage.cpp
    System/StorageSystemReplicas.cpp
    System/StorageSystemReplicationQueue.cpp
    System/StorageSystemRoleGrants.cpp
    System/StorageSystemRoles.cpp
    System/StorageSystemRowPolicies.cpp
    System/StorageSystemSettings.cpp
    System/StorageSystemSettingsProfileElements.cpp
    System/StorageSystemSettingsProfiles.cpp
    System/StorageSystemStackTrace.cpp
    System/StorageSystemStoragePolicies.cpp
    System/StorageSystemTableEngines.cpp
    System/StorageSystemTableFunctions.cpp
    System/StorageSystemTables.cpp
    System/StorageSystemUsers.cpp
    System/StorageSystemZeros.cpp
    System/StorageSystemZooKeeper.cpp
    AlterCommands.cpp
    ColumnDefault.cpp
    ColumnsDescription.cpp
    ConstraintsDescription.cpp
    getStructureOfRemoteTable.cpp
    IndicesDescription.cpp
    IStorage.cpp
    MutationCommands.cpp
    PartitionCommands.cpp
    ReadInOrderOptimizer.cpp
    registerStorages.cpp
    StorageBuffer.cpp
    StorageDictionary.cpp
    StorageDistributed.cpp
    StorageFactory.cpp
    StorageFile.cpp
    StorageGenerateRandom.cpp
    StorageInMemoryMetadata.cpp
    StorageInput.cpp
    StorageJoin.cpp
    StorageLog.cpp
    StorageLogSettings.cpp
    StorageMaterializedView.cpp
    StorageMemory.cpp
    StorageMerge.cpp
    StorageMergeTree.cpp
    StorageMySQL.cpp
    StorageNull.cpp
    StorageReplicatedMergeTree.cpp
    StorageS3Settings.cpp
    StorageSet.cpp
    StorageStripeLog.cpp
    StorageTinyLog.cpp
    StorageURL.cpp
    StorageValues.cpp
    StorageView.cpp
    StorageXDBC.cpp
    transformQueryForExternalDatabase.cpp
    VirtualColumnUtils.cpp
    extractKeyExpressionList.cpp
    TTLDescription.cpp
    KeyDescription.cpp
    SelectQueryDescription.cpp
)

END()
