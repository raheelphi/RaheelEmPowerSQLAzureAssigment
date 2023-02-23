﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AssigmentApp
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="assigmenttest")]
	public partial class AzureSQLConnectionDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertLogInfo(LogInfo instance);
    partial void UpdateLogInfo(LogInfo instance);
    partial void DeleteLogInfo(LogInfo instance);
    #endregion
		
		public AzureSQLConnectionDataContext() : 
				base(global::AssigmentApp.Properties.Settings.Default.assigmenttestConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public AzureSQLConnectionDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AzureSQLConnectionDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AzureSQLConnectionDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AzureSQLConnectionDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<LogInfo> LogInfos
		{
			get
			{
				return this.GetTable<LogInfo>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LogInfo")]
	public partial class LogInfo : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _LogId;
		
		private string _LogStatus;
		
		private string _LogDescription;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnLogIdChanging(int value);
    partial void OnLogIdChanged();
    partial void OnLogStatusChanging(string value);
    partial void OnLogStatusChanged();
    partial void OnLogDescriptionChanging(string value);
    partial void OnLogDescriptionChanged();
    #endregion
		
		public LogInfo()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LogId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int LogId
		{
			get
			{
				return this._LogId;
			}
			set
			{
				if ((this._LogId != value))
				{
					this.OnLogIdChanging(value);
					this.SendPropertyChanging();
					this._LogId = value;
					this.SendPropertyChanged("LogId");
					this.OnLogIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LogStatus", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string LogStatus
		{
			get
			{
				return this._LogStatus;
			}
			set
			{
				if ((this._LogStatus != value))
				{
					this.OnLogStatusChanging(value);
					this.SendPropertyChanging();
					this._LogStatus = value;
					this.SendPropertyChanged("LogStatus");
					this.OnLogStatusChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LogDescription", DbType="VarChar(500)")]
		public string LogDescription
		{
			get
			{
				return this._LogDescription;
			}
			set
			{
				if ((this._LogDescription != value))
				{
					this.OnLogDescriptionChanging(value);
					this.SendPropertyChanging();
					this._LogDescription = value;
					this.SendPropertyChanged("LogDescription");
					this.OnLogDescriptionChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
